/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.io.File;
import java.io.IOException;
import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPFile;

/**
 *
 * @author Zhen Jie
 */
public class DataWriter {

    FileManager fMgr = null;
    WritableWorkbook myexcel = null;
    WritableSheet mysheet = null;
    FTPClient ftpclient = null;

    public DataWriter(String realPath) throws IOException, WriteException {
        fMgr = new FileManager(realPath);
        myexcel = Workbook.createWorkbook(fMgr.getFile());
        mysheet = myexcel.createSheet("mysheet", 0);
        myexcel.close();
    }

    public void writeAnswer(String qn, String grade, String timestamp) throws WriteException, IOException {
        int rowNum = Integer.parseInt(qn);
        Label qnlabel = new Label(0, rowNum, qn);
        Label gradelabel = new Label(1, rowNum, grade);
        Label timelabel = new Label(2, rowNum, timestamp);
        mysheet.addCell(qnlabel);
        mysheet.addCell(gradelabel);
        mysheet.addCell(timelabel);
        // Write to excel
        myexcel.write();
        myexcel.close();
    }

    public static void downloadDirectory(FTPClient ftpClient, String parentDir,
            String currentDir, String saveDir) throws IOException {
        String dirToList = parentDir;

        FTPFile[] subFiles = ftpClient.listFiles(dirToList);

        if (subFiles != null && subFiles.length > 0) {
            for (FTPFile aFile : subFiles) {
                String currentFileName = aFile.getName();
                if (currentFileName.equals(".") || currentFileName.equals("..")) {
                    // skip parent directory and the directory itself
                    continue;
                }
                String filePath = parentDir + "/" + currentDir + "/"
                        + currentFileName;
                if (currentDir.equals("")) {
                    filePath = parentDir + "/" + currentFileName;
                }

                String newDirPath = saveDir + parentDir + File.separator
                        + currentDir + File.separator + currentFileName;
                if (currentDir.equals("")) {
                    newDirPath = saveDir + parentDir + File.separator
                            + currentFileName;
                }

                if (aFile.isDirectory()) {
                    // create the directory in saveDir
                    File newDir = new File(newDirPath);
                    boolean created = newDir.mkdirs();
                    if (created) {
                        System.out.println("CREATED the directory: " + newDirPath);
                    } else {
                        System.out.println("COULD NOT create the directory: " + newDirPath);
                    }

                    // download the sub directory
                    downloadDirectory(ftpClient, dirToList, currentFileName,
                            saveDir);
                } 
            }
        }
    }
}
