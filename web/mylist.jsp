<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@include file="protect/mgrProtect.jsp" %>
<%
    String successmsg = request.getParameter("successmsg");
%>
<%
    String listTitle = request.getParameter("ListTitle");
    String listType = request.getParameter("ListType");
    String listAdded = "";
    listAdded = request.getParameter("listAdded");
    String cfmAdded = null;
    String today = "";
    if (listAdded != null) {
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
        today = sdf.format(date);
        cfmAdded = "done";
        session.setAttribute("cfmAdded", cfmAdded);
    }
    cfmAdded = (String) session.getAttribute("cfmAdded");
    String[] listDetails = (String[]) session.getAttribute("listDetails");
    Object newEquip = session.getAttribute("newEquipment");
    String equip = null;
    if (newEquip != null) {
        equip = newEquip.toString();
    }
    //List Details
    String[] task1 = null;
    String[] task2 = null;
    String[] task3 = null;
    String[] task4 = null;
    String[] task5 = null;

    // Retrieve session attributes if any
    String[] t1 = (String[]) session.getAttribute("task1");
    String[] t2 = (String[]) session.getAttribute("task2");
    String[] t3 = (String[]) session.getAttribute("task3");
    String[] t4 = (String[]) session.getAttribute("task4");
    String[] t5 = (String[]) session.getAttribute("task5");

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
        <title>ViewList</title>
    </head>
    <body>
        <!-- Manager's Nav Bar -->
        <%@include file="webComponents/navBarMgr.jsp" %>
        <div class="container" style="padding-top: 70px;">
            <!-- Guidance and Instructions -->
            <div class="row">
                <%
                    if (successmsg != null) {
                %>

                <div class="alert alert-success alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                        &times;
                    </button>
                    <a href="#" class="alert-link"> <%=successmsg%> </a>
                </div>

                <%            }
                %>
                <div class="col-sm-12">
                    <h4>Find, manage and version-control all of your lists here </h4>

                    <p>
                        You may browse the lists that you have created for your equipments here. The version controls are also indicated by the switches beside the list.<br>
                        Using the controls, you may also view, edit and delete lists. Note that editing saves a new version of the list. 
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div role="tabpanel">

                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs tabs-left">
                            <li role="presentation" class="active"><a href="#mother" aria-controls="mother" role="tab" data-toggle="tab">Motherboard</a></li>
                            <li role="presentation"><a href="#cool" aria-controls="cool" role="tab" data-toggle="tab">Compressor</a></li>
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
                                            This is the listing for all the lists you have created. By turning on the switch, this list becomes active and is visible to your engineers. 
                                        </p>
                                        <hr>
                                    </div>
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
                                                    <td>Indoor Unit</td>
                                                    <td>21-01-2015</td>
                                                    <td>
                                                        <input type="checkbox" checked data-toggle="switch" />
                                                        <a class="btn-xs btn-info" href="#"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>Outdoor Unit</td>
                                                    <td>22-02-2015</td>
                                                    <td>
                                                        <input type="checkbox" checked data-toggle="switch" />
                                                        <a class="btn-xs btn-info" href="#"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <%
                                                    if (cfmAdded != null && listDetails[1].equals("Motherboard")) {
                                                %>
                                                <tr>
                                                    <td>3</td>
                                                    <td><%=listDetails[0]%></td>
                                                    <td><%=today%></td>
                                                    <td>
                                                        <input type="checkbox" data-toggle="switch" />
                                                        <a class="btn-xs btn-info" href="" data-toggle="modal" data-target="#detailsModal"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <%}
                                                %>
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
                                <!-- Guidance and Instructions -->
                                <div class="container">
                                    <div class="row">
                                        <br>
                                        <p>
                                            This is the listing for all the lists you have created. By turning on the switch, this list becomes active and is visible to your engineers. 
                                        </p>
                                        <hr>
                                    </div>
                                    <div class="table-responsive">
                                        <table id="CList" class="table-striped" cellspacing="0" width="100%">
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
                                                    <td>Compressor (G2T1-R0X) - Modular </td>
                                                    <td>22-03-2015</td>
                                                    <td>
                                                        <input type="checkbox" checked data-toggle="switch" />
                                                        <a class="btn-xs btn-info" href="" data-toggle="modal" data-target="#detailsModal1"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <%
                                                    if (cfmAdded != null && listDetails[1].equals("Compressor")) {
                                                %>
                                                <tr>
                                                    <td>2</td>
                                                    <td><%=listDetails[0]%></td>
                                                    <td><%=today%></td>
                                                    <td>
                                                        <input type="checkbox" data-toggle="switch" />
                                                        <a class="btn-xs btn-info" href="" data-toggle="modal" data-target="#detailsModal"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <%}
                                                %>
                                            </tbody>
                                        </table>
                                        <script>
                                            $(document).ready(function() {
                                                $('#CList').DataTable();
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
                                            This is the listing for all the lists you have created. By turning on the switch, this list becomes active and is visible to your engineers. 
                                        </p>
                                        <hr>
                                    </div>
                                    <div class="table-responsive">
                                        <table id="FaList" class="table-striped" cellspacing="0" width="100%">
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
                                                    <td>Filter Checks</td>
                                                    <td>21-01-2015</td>
                                                    <td>
                                                        <input type="checkbox" checked data-toggle="switch" />
                                                        <a class="btn-xs btn-info" href="#"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>

                                                <%
                                                    if (cfmAdded != null && listDetails[1].equals("Filter")) {
                                                %>
                                                <tr>
                                                    <td>2</td>
                                                    <td><%=listDetails[0]%></td>
                                                    <td><%=today%></td>
                                                    <td>
                                                        <input type="checkbox" data-toggle="switch" />
                                                        <a class="btn-xs btn-info" href="" data-toggle="modal" data-target="#detailsModal"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <%}
                                                %>
                                            </tbody>
                                        </table>
                                        <script>
                                            $(document).ready(function() {
                                                $('#FaList').DataTable();
                                            });
                                        </script>
                                    </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="fan">
                                <div class="container">
                                    <div class="row">
                                        <br>
                                        <p>
                                            This is the listing for all the lists you have created. By turning on the switch, this list becomes active and is visible to your engineers. 
                                        </p>
                                        <hr>
                                    </div>
                                    <div class="table-responsive">
                                        <table id="FList" class="table-striped" cellspacing="0" width="100%">
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
                                                    <td>Cooling/Evaporator Coils</td>
                                                    <td>21-1-2015</td>
                                                    <td>
                                                        <input type="checkbox" checked data-toggle="switch" />
                                                        <a class="btn-xs btn-info" href="#"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>Condenser Fan</td>
                                                    <td>21-1-2015</td>
                                                    <td>
                                                        <input type="checkbox" data-toggle="switch" />
                                                        <a class="btn-xs btn-info" href="#"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>Blower checks</td>
                                                    <td>22-1-2015</td>
                                                    <td>
                                                        <input type="checkbox" checked data-toggle="switch" />
                                                        <a class="btn-xs btn-info" href="#"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>Condenser Fan</td>
                                                    <td>2-3-2015</td>
                                                    <td>
                                                        <input type="checkbox" checked data-toggle="switch" />
                                                        <a class="btn-xs btn-info" href="#"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <%
                                                    if (cfmAdded != null && listDetails[1].equals("Fan")) {
                                                %>
                                                <tr>
                                                    <td>5</td>
                                                    <td><%=listDetails[0]%></td>
                                                    <td><%=today%></td>
                                                    <td>
                                                        <input type="checkbox" data-toggle="switch" />
                                                        <a class="btn-xs btn-info" href="" data-toggle="modal" data-target="#detailsModal"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <%}
                                                %>
                                            </tbody>
                                        </table>
                                        <script>
                                            $(document).ready(function() {
                                                $('#FList').DataTable();
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
                                                    <th>List Name</th>
                                                    <th>Date Created</th>
                                                    <th>Options</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    if (equip != null && cfmAdded != null && listDetails[1].equals(equip)) {
                                                %>
                                                <tr>
                                                    <td>1</td>
                                                    <td><%=listDetails[0]%></td>
                                                    <td><%=today%></td>
                                                    <td>
                                                        <input type="checkbox" data-toggle="switch" />
                                                        <a class="btn-xs btn-info" href="" data-toggle="modal" data-target="#detailsModal"><span class="fui-info-circle"></span> Details</a>
                                                    </td>
                                                </tr>
                                                <%
                                                } else {
                                                %>
                                                <tr>
                                                    <td colspan="4">
                                                        No records yet
                                                    </td>
                                                </tr>
                                                <%}
                                                %>
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
            <div class="modal fade" id="detailsModal1" tabindex="-1" role="dialog" 
                 aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" 
                                    data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h4 class="modal-title" id="myModalLabel">
                                Compressor (G2T1-R0X) - Modular
                            </h4>
                        </div>


                        <div class="modal-body">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="panel-group" id="accordion1">

                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordion1" href="#collapse11">
                                                            Check <strong>standard air flow</strong></a>
                                                    </h4>
                                                </div>
                                                <div id="collapse11" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>Units of measurements is in m³/min</li>
                                                            <li>Run twice and take the average</li>
                                                            <li>Range of readings from H/M/L </li>
                                                            <li>If 'L', fail the task</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordion1" href="#collapse12">
                                                            <strong>Voltage of capacitor</strong> in compressor</a>
                                                    </h4>
                                                </div>
                                                <div id="collapse12" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>Test voltage readings for pins pairings: 1-2, 1-3, 2-3</li>
                                                            <li>Pass task if all pairs have current passing through</li>
                                                        </ul>
                                                        <div class="tile">
                                                            <img src="img/capacitor.png">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordion1" href="#collapse13">
                                                            Check <strong>maximum current</strong> in <strong>heating conditions</strong> (A)</a>
                                                    </h4>
                                                </div>
                                                <div id="collapse13" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>Push unit to maximum voltage before overheating</li>
                                                            <li>Monitor temperature increase as you increase the voltage</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordion1" href="#collapse14">
                                                            Check <strong>power factor</strong></a>
                                                    </h4>
                                                </div>
                                                <div id="collapse14" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li>Push unit to maximum voltage before overheating</li>
                                                            <li>Monitor temperature increase as you increase the voltage</li>
                                                            <li><strong>Convert measurements to &#37;</strong></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordion1" href="#collapse15">
                                                            Check <strong>Cooling</strong> conditions
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapse15" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <p>
                                                            Condition has to meet -14 - 46 degrees.
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordion1" href="#collapse16">
                                                            Check <strong>cooling and heating</strong> conditions</a>
                                                    </h4>
                                                </div>
                                                <div id="collapse16" class="panel-collapse collapse">
                                                    <div class="panel-body">
                                                        <p>
                                                            Units of measurement is in &#176;C
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" 
                                    data-dismiss="modal">Close
                            </button>
                        </div>

                    </div><!-- /.modal-content -->
                </div><!-- /.modal -->
            </div>
        </div>
        <div class="modal fade" id="detailsModal" tabindex="-1" role="dialog" 
             aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" 
                                data-dismiss="modal" aria-hidden="true">
                            &times;
                        </button>
                        <h4 class="modal-title" id="myModalLabel">
                            <%=listDetails[0]%>
                        </h4>
                    </div>


                    <div class="modal-body">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="panel-group" id="accordion">
                                        <%
                                            if (t1 != null) {
                                        %>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
                                                        <%=t1[0]%></a>
                                                </h4>
                                            </div>
                                            <div id="collapse1" class="panel-collapse collapse">
                                                <div class="panel-body"><%=t1[1]%></div>
                                            </div>
                                        </div>
                                        <%}
                                        %>
                                        <%
                                            if (t2 != null) {
                                        %>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
                                                        <%=t2[0]%></a>
                                                </h4>
                                            </div>
                                            <div id="collapse2" class="panel-collapse collapse">
                                                <div class="panel-body"><%=t2[1]%></div>
                                            </div>
                                        </div>
                                        <%}
                                        %>
                                        <%
                                            if (t3 != null) {
                                        %>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">
                                                        <%=t3[0]%></a>
                                                </h4>
                                            </div>
                                            <div id="collapse3" class="panel-collapse collapse">
                                                <div class="panel-body"><%=t3[1]%></div>
                                            </div>
                                        </div>
                                        <%}
                                        %>
                                        <%
                                            if (t4 != null) {
                                        %>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">
                                                        <%=t4[0]%></a>
                                                </h4>
                                            </div>
                                            <div id="collapse4" class="panel-collapse collapse">
                                                <div class="panel-body"><%=t4[1]%></div>
                                            </div>
                                        </div>
                                        <%}
                                        %>
                                        <%
                                            if (t5 != null) {
                                        %>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">
                                                        <%=t5[0]%></a>
                                                </h4>
                                            </div>
                                            <div id="collapse5" class="panel-collapse collapse">
                                                <div class="panel-body"><%=t5[1]%></div>
                                            </div>
                                        </div>
                                        <%}
                                        %>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" 
                                data-dismiss="modal">Close
                        </button>
                    </div>

                </div><!-- /.modal-content -->
            </div><!-- /.modal -->
        </div>

    </body>
</html>
