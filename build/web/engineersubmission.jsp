<%@page import="java.util.ArrayList"%>
<%@include file="protect/mgrProtect.jsp" %>
<%
    String date = request.getParameter("date");
    if (date == null) {
        response.sendRedirect("/index.jsp");
    }
    String issn = request.getParameter("issn");
    String engineer = request.getParameter("engineer");
    String fail = request.getParameter("fail");
    int failNo = 0;
    if (fail != null) {
        failNo = Integer.parseInt(fail);
    }
    String reason = request.getParameter("reason");
    ArrayList<String> title = new ArrayList<String>();
    title.add("Check <strong>standard air flow</strong>");
    title.add("<strong>Voltage of capacitor</strong> in compressor");
    title.add("Check <strong>maximum current</strong> in <strong>heating conditions</strong> (A)");
    title.add("Check <strong>power factor</strong>");
    title.add("Check <strong>Cooling</strong> conditions");
    title.add("Check <strong>cooling and heating</strong> conditions");
    ArrayList<String> details = new ArrayList<String>();
    details.add("<ul><li>Units of measurements is in m³/min</li><li>Run twice and take the average</li><li>Range of readings from H/M/L </li><li>If 'L', fail the task</li></ul>");
    details.add("<ul><li>Test voltage readings for pins pairings: 1-2, 1-3, 2-3</li><li>Pass task if all pairs have current passing through</li></ul>");
    details.add("<ul><li>Push unit to maximum voltage before overheating</li><li>Monitor temperature increase as you increase the voltage</li></ul>");
    details.add("<ul><li>Push unit to maximum voltage before overheating</li><li>Monitor temperature increase as you increase the voltage</li><li><strong>Convert measurements to &#37;</strong></li></ul>");
    details.add("<p>Condition has to meet -14 - 46 degrees.</p>");
    details.add("<p>Units of measurement is in &#176;C</p>");
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
        <title>Submission Report</title>
    </head>
    <body>
        <!-- Engineer's Nav Bar -->
        <%@include file="webComponents/navBarMgr.jsp" %>
        <div class="container" style="padding-top: 70px;">
            <div class="row">
                <div class="col-sm-12">
                    <h4>Submission Report</h4>
                    <br>
                    <table>
                        <tr>
                            <th>Submitted by </th><td>: <%=engineer%></td>
                        </tr>
                        <tr>
                            <th>Equipment ISSN </th><td>: <%=issn%></td>
                        </tr>
                        <%
                            if (fail != null) {
                        %>
                        <tr>
                            <th>Grade </th><td>: Fail</td>
                        </tr>
                        <tr>
                            <th>Component Failed </th><td>: Task <%=fail%></td>
                        </tr>
                        <%                        } else {
                        %>
                        <tr>
                            <th>Grade </th><td>: Pass</td>
                        </tr>
                        <%                                    }
                        %>

                        <tr>
                            <th>Date </th><td>: <%=date%></td>
                        </tr>
                        <%
                            if (reason != null) {
                        %>
                        <tr>
                            <th>Comments</th><td>: <%=reason%></td>
                        </tr>
                        <%                                    }
                        %>
                    </table>

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
                                    <th>Task Title</th>
                                    <th>Task Details</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    for (int i = 0; i < 6; i++) {
                                        String ti = title.get(i);
                                        String de = details.get(i);
                                        int j = i + 1;
                                %>
                                <tr>
                                    <td><%=i + 1%></td>
                                    <td>
                                        <%=ti%>
                                    </td>
                                    <td>
                                        <%=de%>
                                        <%
                                            if (j == 2) {
                                        %>
                                        <div class="tile">
                                            <img src="img/capacitor.png">
                                        </div>
                                        <%                                        }
                                        %>
                                    </td>
                                    <td>
                                        <%
                                            if (j == failNo) {
                                        %>
                                        <label class="btn-danger btn-xs">Fail</label>
                                        <%                                    } else {
                                        %>
                                        <label class="btn-success btn-xs">Pass</label>
                                        <%                                        }
                                        %>
                                    </td>
                                </tr>
                                <%                                    }
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
        </div>
    </body>
</html>

