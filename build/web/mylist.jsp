<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@include file="protect/mgrProtect.jsp" %>
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
        <title>MyList</title>
    </head>
    <body style="padding-top: 70px;">
        <!-- Manager's Nav Bar -->
        <%@include file="webComponents/navBarMgr.jsp" %>
        <div class="container">
            <!-- Guidance and Instructions -->
            <div class="row">
                <h4>Find, manage and version-control all of your lists here </h4>

                <p>
                    You may browse the lists that you have created for your equipments here. The version controls are also indicated by the switches beside the list.<br>
                    Using the controls, you may also view, edit and delete lists. Note that editing saves a new version of the list. 
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
                                                <td>Hey I Just Met You</td>
                                                <td>21-01-2015</td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>And This Is Crazy</td>
                                                <td>22-02-2015</td>
                                                <td>
                                                    <input type="checkbox" checked data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>But</td>
                                                <td>01-02-2015</td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>Heres My Number</td>
                                                <td>12-02-2015</td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>So</td>
                                                <td>22-01-2015</td>
                                                <td>
                                                    <input type="checkbox" checked data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>6</td>
                                                <td>Call Me Maybe</td>
                                                <td>02-01-2015</td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <%
                                                if (cfmAdded != null && listDetails[1].equals("Motherboard")) {
                                            %>
                                            <tr>
                                                <td>7</td>
                                                <td><%=listDetails[0]%></td>
                                                <td><%=today%></td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
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
                                                <td>All you people can't you see, can't you see </td>
                                                <td>21-01-2015</td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>How your love's affecting our reality</td>
                                                <td>22-02-2015</td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Every time we're down</td>
                                                <td>01-02-2015</td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>You can make it right</td>
                                                <td>12-02-2015</td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>And</td>
                                                <td>22-01-2015</td>
                                                <td>
                                                    <input type="checkbox" checked data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>6</td>
                                                <td>That makes you larger than life</td>
                                                <td>2-1-2015</td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <%
                                                if (cfmAdded != null && listDetails[1].equals("Cooling Unit")) {
                                            %>
                                            <tr>
                                                <td>7</td>
                                                <td><%=listDetails[0]%></td>
                                                <td><%=today%></td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
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
                                    <table id="FIList" class="table-striped" cellspacing="0" width="100%">
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
                                                <td>And darling I will be loving you til we are 70</td>
                                                <td>21-01-2015</td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>And baby my heart could still fall as hard at 23</td>
                                                <td>22-02-2015</td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>And Im thinking bout how people fall in love in mysterious ways</td>
                                                <td>01-02-2015</td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>Maybe just the touch of a hand</td>
                                                <td>12-02-2015</td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>Well me I fall in love with you every single day</td>
                                                <td>22-01-2015</td>
                                                <td>
                                                    <input type="checkbox" checked data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>6</td>
                                                <td>And I just wanna tell you I am</td>
                                                <td>2-01-2015</td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <%
                                                if (cfmAdded != null && listDetails[1].equals("Filter")) {
                                            %>
                                            <tr>
                                                <td>7</td>
                                                <td><%=listDetails[0]%></td>
                                                <td><%=today%></td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <%}
                                            %>
                                        </tbody>
                                    </table>
                                    <script>
                                        $(document).ready(function() {
                                            $('#FIList').DataTable();
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
                                                <td>Rose garden filled with thorns</td>
                                                <td>21-1-2015</td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Keep you second guessing like</td>
                                                <td>22-2-2015</td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Oh my God who is she</td>
                                                <td>1-2-2015</td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>I get drunk on jealousy</td>
                                                <td>12-2-2015</td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>But you will come back each time you leave</td>
                                                <td>22-1-2015</td>
                                                <td>
                                                    <input type="checkbox" checked data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>6</td>
                                                <td>Cause darling Im a nightmare dressed like a daydream</td>
                                                <td>2-1-2015</td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
                                                </td>
                                            </tr>
                                            <%
                                                if (cfmAdded != null && listDetails[1].equals("Fan")) {
                                            %>
                                            <tr>
                                                <td>7</td>
                                                <td><%=listDetails[0]%></td>
                                                <td><%=today%></td>
                                                <td>
                                                    <input type="checkbox" data-toggle="switch" />
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
    </body>
</html>
