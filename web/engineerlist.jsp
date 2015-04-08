<%@include file="protect/mgrProtect.jsp" %> 
<%
    String listTitle = request.getParameter("ListTitle");
    String listType = request.getParameter("ListType");
    Object newEquip = session.getAttribute("newEquipment");
    String equip = null;
    if (newEquip != null) {
        equip = newEquip.toString();
    }
    
%>
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
        <title>Engineer Listing</title>
    </head>
    <body>
        <!-- Manager's Nav Bar -->
        <%@include file="webComponents/navBarMgr.jsp" %>
        <div class="container" style="padding-top: 70px;">
            <!-- Guidance and Instructions -->
            <div class="row">
                <div class="col-sm-12">
                    <h4>Track submissions of checklists </h4>
                    <p>
                        Browse through the submissions here by choosing the equipment.
                    </p> 
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div role="tabpanel">

                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs tabs-left">
                            <li role="presentation" class="active"><a href="#mother" aria-controls="mother" role="tab" data-toggle="tab">Motherboard</a></li>
                            <li role="presentation"><a href="#compressor" aria-controls="compressor" role="tab" data-toggle="tab">Compressor</a></li>
                            <li role="presentation"><a href="#filter" aria-controls="filter" role="tab" data-toggle="tab">Filter</a></li>
                            <li role="presentation"><a href="#fan" aria-controls="fan" role="tab" data-toggle="tab">Fan</a></li>
                                <%
                                    if (equip != null) {
                                %>
                            <li role="presentation"><a href="#newEQ" aria-controls="newEQ" role="tab" data-toggle="tab"><%=equip%></a></li> 
                                <%
                                    }
                                %>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="mother">
                                <!-- Guidance and Instructions -->
                                <div class="container">
                                    <div class="row">
                                        <br>
                                        <p>
                                            Use the Search Function to aid you in looking for what you want. Simply key in the text that you are looking for, and the table will filter accordingly!
                                        </p>
                                        <hr>
                                    </div>
                                    <div class="table-responsive">
                                        <table id="MList" class="table-striped" cellspacing="0" width="100%">
                                            <thead>
                                                <tr>
                                                    <th>S/N</th>
                                                    <th>ISSN</th>
                                                    <th>Status</th>
                                                    <th>Submitted By</th>
                                                    <th>Date</th>
                                                    <th>Options</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>123-456-789</td>
                                                    <td><label class="btn-success btn-xs">Pass</label></td>
                                                    <td>Bane</td>
                                                    <td>21-1-2015</td>
                                                    <td>
                                                        <a class="btn-xs btn-primary" href="#"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>567-890-123</td>
                                                    <td><label class="btn-success btn-xs">Pass</label></td>
                                                    <td>Bane</td>
                                                    <td>22-2-2015</td>
                                                    <td>
                                                        <a class="btn-xs btn-primary" href="#"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>789-012-345</td>
                                                    <td><label class="btn-danger btn-xs">Fail</label></td>
                                                    <td>Beyond Ceys</td>
                                                    <td>1-2-2015</td>
                                                    <td>
                                                        <a class="btn-xs btn-primary" href="#"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>234-567-890</td>
                                                    <td><label class="btn-success btn-xs">Pass</label></td>
                                                    <td>Add Share En</td>
                                                    <td>12-2-2015</td>
                                                    <td>
                                                        <a class="btn-xs btn-primary" href="#"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>5</td>
                                                    <td>987-654-567</td>
                                                    <td><label class="btn-success btn-xs">Pass</label></td>
                                                    <td>Beyond Ceys</td>
                                                    <td>22-1-2015</td>
                                                    <td>
                                                        <a class="btn-xs btn-primary" href="#"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>6</td>
                                                    <td>134-578-903</td>
                                                    <td><label class="btn-danger btn-xs">Fail</label></td>
                                                    <td>Beyond Ceys</td>
                                                    <td>2-1-2015</td>
                                                    <td>
                                                        <a class="btn-xs btn-primary" href="#"><span class="fui-info-circle"></span> Details</a>
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
                            <div role="tabpanel" class="tab-pane" id="compressor">
                                <!-- Guidance and Instructions -->
                                <div class="container">
                                    <div class="row">
                                        <br>
                                        <p>
                                            Use the Search Function to aid you in looking for what you want. Simply key in the text that you are looking for, and the table will filter accordingly!
                                        </p>
                                        <hr>
                                    </div>
                                    <div class="table-responsive">
                                        <table id="NList" class="table-striped" cellspacing="0" width="100%">
                                            <thead>
                                                <tr>
                                                    <th>S/N</th>
                                                    <th>ISSN</th>
                                                    <th>Status</th>
                                                    <th>Submitted By</th>
                                                    <th>Date</th>
                                                    <th>Options</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>123-456-789</td>
                                                    <td><label class="btn-success btn-xs">Pass</label></td>
                                                    <td>Joleen Tsai</td>
                                                    <td>22-2-2015</td>
                                                    <td>
                                                        <a class="btn-xs btn-primary" href="engineersubmission.jsp?issn=123&#45;456&#45;789&date=25&#45;2&#45;2015&engineer=Joleen%20Tsai"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>567-890-123</td>
                                                    <td><label class="btn-success btn-xs">Pass</label></td>
                                                    <td>Jain Chou</td>
                                                    <td>22-2-2015</td>
                                                    <td>
                                                        <a class="btn-xs btn-primary" href="engineersubmission.jsp?issn=567&#45;890&#45;123&date=25&#45;2&#45;2015&engineer=Jain%20Chou"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>789-012-345</td>
                                                    <td><label class="btn-success btn-xs">Pass</label></td>
                                                    <td>Jain Chou</td>
                                                    <td>22-2-2015</td>
                                                    <td>
                                                        <a class="btn-xs btn-primary" href="engineersubmission.jsp?issn=789&#45;012&#45;345&date=25&#45;2&#45;2015&engineer=Jain%20Chou"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>234-567-890</td>
                                                    <td><label class="btn-danger btn-xs">Fail</label></td>
                                                    <td>Joleen Tsai</td>
                                                    <td>25-2-2015</td>
                                                    <td>
                                                        <a class="btn-xs btn-primary" href="engineersubmission.jsp?issn=234&#45;567&#45;890&date=25&#45;2&#45;2015&engineer=Joleen%20Tsai&fail=5&reason=Cooling%20Conditions%20was%20not%20low%20enough&#44;%20reaching%20a%20level%20of%20&#45;5%20degrees%20only&#46;"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <script>
                                            $(document).ready(function() {
                                                $('#NList').DataTable();
                                            });
                                        </script>
                                    </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="filter">
                                <!-- Guidance and Instructions -->
                                <div class="container">
                                    <div class="row">
                                        <br>
                                        <p>
                                            Use the Search Function to aid you in looking for what you want. Simply key in the text that you are looking for, and the table will filter accordingly!
                                        </p>
                                        <hr>
                                    </div>
                                    <div class="table-responsive">
                                        <table id="OList" class="table-striped" cellspacing="0" width="100%">
                                            <thead>
                                                <tr>
                                                    <th>S/N</th>
                                                    <th>ISSN</th>
                                                    <th>Status</th>
                                                    <th>Submitted By</th>
                                                    <th>Date</th>
                                                    <th>Options</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>123-456-789</td>
                                                    <td><label class="btn-success btn-xs">Pass</label></td>
                                                    <td>Big Bang</td>
                                                    <td>9-3-2015</td>
                                                    <td>
                                                        <a class="btn-xs btn-primary" href="#"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                
                                            </tbody>
                                        </table>
                                        <script>
                                            $(document).ready(function() {
                                                $('#OList').DataTable();
                                            });
                                        </script>
                                    </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="fan">
                                <!-- Guidance and Instructions -->
                                <div class="container">
                                    <div class="row">
                                        <br>
                                        <p>
                                            Use the Search Function to aid you in looking for what you want. Simply key in the text that you are looking for, and the table will filter accordingly!
                                        </p>
                                        <hr>
                                    </div>
                                    <div class="table-responsive">
                                        <table id="PList" class="table-striped" cellspacing="0" width="100%">
                                            <thead>
                                                <tr>
                                                    <th>S/N</th>
                                                    <th>ISSN</th>
                                                    <th>Status</th>
                                                    <th>Submitted By</th>
                                                    <th>Date</th>
                                                    <th>Options</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>123-456-789</td>
                                                    <td><label class="btn-success btn-xs">Pass</label></td>
                                                    <td>Hi R Seoul</td>
                                                    <td>21-2-2015</td>
                                                    <td>
                                                        <a class="btn-xs btn-primary" href="#"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>567-890-123</td>
                                                    <td><label class="btn-danger btn-xs">Fail</label></td>
                                                    <td>Whale Lee</td>
                                                    <td>21-2-2015</td>
                                                    <td>
                                                        <a class="btn-xs btn-primary" href="#"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>789-012-345</td>
                                                    <td><label class="btn-success btn-xs">Pass</label></td>
                                                    <td>Hi R Seoul</td>
                                                    <td>21-2-2015</td>
                                                    <td>
                                                        <a class="btn-xs btn-primary" href="#"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>234-567-890</td>
                                                    <td><label class="btn-success btn-xs">Pass</label></td>
                                                    <td>Hi R Seoul</td>
                                                    <td>22-2-2015</td>
                                                    <td>
                                                        <a class="btn-xs btn-primary" href="#"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <script>
                                            $(document).ready(function() {
                                                $('#PList').DataTable();
                                            });
                                        </script>
                                    </div>
                                </div>
                            </div>
                            <%
                                if (equip != null) {
                            %>
                            <div role="tabpanel" class="tab-pane" id="newEQ"> 
                                <div class="container">
                                    <div class="row">
                                        <br>
                                        <p>
                                            This is the listing for all the lists you have created. By turning on the switch, this list becomes active and is visible to your engineers. 
                                        </p>
                                        <hr>
                                    </div>
                                    <div class="table-responsive">
                                        <table id="NewList" class="table-striped" cellspacing="0" width="100%">
                                            <thead>
                                                <tr>
                                                    <th>S/N</th>
                                                    <th>ISSN</th>
                                                    <th>Status</th>
                                                    <th>Submitted By</th>
                                                    <th>Date</th>
                                                    <th>Options</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td colspan="6">
                                                        No records yet
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>

                                    </div>
                                </div>
                            </div>
                            <%                    }
                            %>
                        </div> 
                    </div>
                </div>
            </div>
        </div> 

    </body>
</html>
