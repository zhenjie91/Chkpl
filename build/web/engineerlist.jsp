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
    <body style="padding-top: 70px;">
        <!-- Manager's Nav Bar -->
        <%@include file="webComponents/navBarMgr.jsp" %>
        <div class="container">
            <!-- Guidance and Instructions -->
            <div class="row">
                <h4>Track submissions of checklists </h4>

                <p>
                    Browse through the submissions here by choosing the equipment.
                </p>
            </div>
            <div class="row">

                <div role="tabpanel">

                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs tabs-left">
                        <li role="presentation" class="active"><a href="#mother" aria-controls="mother" role="tab" data-toggle="tab">Motherboard</a></li>
                        <li role="presentation"><a href="#cool" aria-controls="cool" role="tab" data-toggle="tab">Cooling Unit</a></li>
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
                                                <td>Jay Zee</td>
                                                <td>21-1-2015</td>
                                                <td>
                                                    <a class="btn-xs btn-primary" href="#"><span class="fui-info-circle"></span> Details</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>567-890-123</td>
                                                <td><label class="btn-success btn-xs">Pass</label></td>
                                                <td>Jay Zee</td>
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
                        <div role="tabpanel" class="tab-pane" id="cool">
                            Too cool for you
                        </div>
                        <div role="tabpanel" class="tab-pane" id="filter">
                            what
                        </div>
                        <div role="tabpanel" class="tab-pane" id="fan">
                            blow blow
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

    </body>
</html>
