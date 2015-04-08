/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.io.File;
import java.util.Random;

/**
 *
 * @author Zhen Jie
 */
public class FileManager {

    File dataExcel = null;

    public FileManager(String realPath) {
        String location = realPath + generateUser();
        dataExcel = new File(location);
    }

    public File getFile() {
        return dataExcel;
    }

    private String generateUser() {
        String userID = "/docs/experiment/" + integerGenerator() + "_" + integerGenerator() + "_" + integerGenerator() + "_" + integerGenerator() + ".xls";
        return userID;
    }

    private String integerGenerator() {
        Random generator = new Random();
        int i = generator.nextInt(10);
        String num = "" + i;
        int j = generator.nextInt(10);
        String num2 = "" + j;
        int k = generator.nextInt(10);
        String num3 = num + num2 + k;
        return num3;
    }
}
