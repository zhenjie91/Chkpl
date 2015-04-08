<%@include file="protect/engProtect.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Loading Bootstrap -->
        <link href="dist/css/vendor/bootstrap.min.css" rel="stylesheet">
        <link href="dist/css/vendor/bootstrap-responsive.css" rel="stylesheet">
        <!-- Loading Flat UI -->
        <link href="dist/css/flat-ui.css" rel="stylesheet">
        <!-- Loading Favicon -->
        <link rel="shortcut icon" href="img/favicon1.ico">
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="dist/js/vendor/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="dist/js/flat-ui.min.js"></script>
        <script src="docs/assets/js/application.js"></script>
        <!-- DataTables CSS -->
        <link rel="stylesheet" type="text/css" href="/DataTables-1.10.5/media/css/jquery.dataTables.css">

        <!-- jQuery -->
        <script type="text/javascript" src="/DataTables-1.10.5/media/js/jquery.js"></script>

        <!-- DataTables -->
        <script type="text/javascript" src="/DataTables-1.10.5/media/js/jquery.dataTables.js"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ViewList</title>
    </head>
    <body>
        <!-- Engineer's Nav Bar -->
        <%@include file="webComponents/navBarEng.jsp" %>
        <div class="container" style="padding-top: 70px;">
            <div class="row">
                <div class="col-sm-12">
                    <h4>ViewList</h4>
                    <br>
                    <p>
                        This list here shows all the checklists that have been made available to you. Click on details to view the task details and click on start to begin your checklist.
                    </p>
                    <hr>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="table-responsive">
                        <table id="MList" class="table-striped" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>S/N</th>
                                    <th>List Name</th>
                                    <th>Date Created</th>
                                    <th>Options</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Compressor (G2T1-R0X) - Modular</td>
                                    <td>03-04-2015</td>
                                    <td>
                                        <a class="btn-xs btn-primary" href=<%="dolist.jsp?ListTitle=" + "Compressor%20G2T1%20R0X"%> ><span class="fui-new"></span> Start</a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <script>
                            $(document).ready(function() {
                                $('#MList').DataTable();
                            });
                        </script>
                    </div>
                </div> 
            </div>
        </div>
    </body>
</html>

