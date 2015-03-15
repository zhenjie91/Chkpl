<%@page contentType="text/html" pageEncoding="UTF-8"%>  
<%@include file="protect/mgrProtect.jsp" %>
<%@include file="assignEngineers.jsp" %>
<!DOCTYPE html>
<html>
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
        <title>Manage Admin</title>
    </head>
    <body>
        <!-- Manager's Nav Bar -->
        <%@include file="webComponents/navBarMgr.jsp" %>

        <div class="container" style="padding-top: 70px;">
            <div class="row">
                <div class="col-sm-12">
                    <h4>Manage <%=title%></h4>
                    <p>
                        Select the equipment to see the engineers assigned to it. <strong>To add a new equipment, select "Add New Equipment"</strong>.
                    </p>
                </div>
            </div> <!-- /tiles -->
            <div class="row">
                <div class="col-sm-12">
                    <form class="form-inline" name="createList_form" method="post" action="manageAdmin.jsp">
                        <div class="form-group">
                            <select class="select-default" data-toggle="select" name="ListType" id="TypeChoose" style="width: 300px">
                                <option value="Motherboard" selected>Motherboard</option>
                                <option value="Compressor">Compressor</option>
                                <option value="Filter">Filter</option>
                                <option value="Fan">Fan</option>
                                <%
                                    if (equip != null) {
                                %>
                                <option value="<%=equip%>"><%=equip%></option>
                                <%
                                    }
                                %>
                            </select>
                        </div>
                        <input class="btn btn-primary" type="submit" value="Go!"/>&nbsp;&nbsp;&nbsp;&nbsp;
                        <a class="btn btn-info" href="" data-toggle="modal" data-target="#myModal"><span class="fui-plus"></span> Add New Equipment</a>
                    </form>
                    <!-- Modal -->
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" 
                         aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" 
                                            data-dismiss="modal" aria-hidden="true">
                                        &times;
                                    </button>
                                    <h4 class="modal-title" id="myModalLabel">
                                        Add New Equipment
                                    </h4>
                                </div>

                                <form name="createEquip_form" method="post" action="manageAdmin.jsp">
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <label>Equipment Name*</label>
                                            <input type="text" class="form-control login-field" value="" placeholder="Enter equipment name" name="equipName" required/>
                                        </div>

                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" 
                                                data-dismiss="modal">Close
                                        </button>
                                        <input class="btn btn-primary" type="submit" value="Submit"/>
                                    </div>
                                </form>
                            </div><!-- /.modal-content -->
                        </div><!-- /.modal -->
                    </div> 
                </div>
            </div>
            <% if (listType != null) {%>
            <div class="row">
                <div class="col-sm-12">
                    <div class="table-responsive">
                        <table id="MList" class="table-striped" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>Email</th>
                                    <th>Date Added</th>
                                    <th>Options</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%if (listType.equals("Motherboard")) {%>
                                <tr>
                                    <td>bane@ManElec.com</td>
                                    <td>10-1-2015</td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a></td>
                                </tr>
                                <tr>
                                    <td>beyondCeys@ManElec.com</td>
                                    <td>10-1-2015</td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a></td>
                                </tr>
                                <tr>
                                    <td>adSharEn@ManElec.com</td>
                                    <td>23-1-2015</td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a></td>
                                </tr>
                                <%
                                    if (eng1 != null && eng1[0].equals("Motherboard")) {
                                %>        
                                <tr>
                                    <td><%=eng1[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                    if (eng2 != null && eng2[0].equals("Motherboard")) {
                                %>        
                                <tr>
                                    <td><%=eng2[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                %>
                                <%
                                    if (eng3 != null && eng3[0].equals("Motherboard")) {
                                %>        
                                <tr>
                                    <td><%=eng3[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                %>
                                <%
                                    if (eng4 != null && eng4[0].equals("Motherboard")) {
                                %>        
                                <tr>
                                    <td><%=eng4[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                %>
                                <%
                                    if (eng5 != null && eng5[0].equals("Motherboard")) {
                                %>        
                                <tr>
                                    <td><%=eng5[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                %>
                                <%} else if (listType.equals("Compressor")) {%>
                                <tr>
                                    <td>jChou@ManElec.com</td>
                                    <td>5-1-2015</td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a></td>
                                </tr>
                                <tr>
                                    <td>jTsai@ManElec.com</td>
                                    <td>6-1-2015</td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a></td>
                                </tr>
                                <tr>
                                    <td>jayZee@ManElec.com</td>
                                    <td>7-1-2015</td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a></td>
                                </tr>
                                <%
                                    if (eng1 != null && eng1[0].equals("Compressor")) {
                                %>        
                                <tr>
                                    <td><%=eng1[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                %>
                                <%
                                    if (eng2 != null && eng2[0].equals("Compressor")) {
                                %>        
                                <tr>
                                    <td><%=eng2[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                %>
                                <%
                                    if (eng3 != null && eng3[0].equals("Compressor")) {
                                %>        
                                <tr>
                                    <td><%=eng3[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                %>
                                <%
                                    if (eng4 != null && eng4[0].equals("Compressor")) {
                                %>        
                                <tr>
                                    <td><%=eng4[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                %>
                                <%
                                    if (eng5 != null && eng5[0].equals("Compressor")) {
                                %>        
                                <tr>
                                    <td><%=eng5[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                %>
                                <%} else if (listType.equals("Filter")) {%>
                                <tr>
                                    <td>bBang@ManElec.com</td>
                                    <td>10-1-2015</td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a></td>
                                </tr>
                                <tr>
                                    <td>superJr@ManElec.com</td>
                                    <td>10-1-2015</td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a></td>
                                </tr>
                                <tr>
                                    <td>as.N.as.D@ManElec.com</td>
                                    <td>23-1-2015</td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a></td>
                                </tr>
                                <tr>
                                    <td>dvChi@ManElec.com</td>
                                    <td>23-1-2015</td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a></td>
                                </tr>
                                <%
                                    if (eng1 != null && eng1[0].equals("Filter")) {
                                %>        
                                <tr>
                                    <td><%=eng1[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                %>
                                <%
                                    if (eng2 != null && eng2[0].equals("Filter")) {
                                %>        
                                <tr>
                                    <td><%=eng2[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                %>
                                <%
                                    if (eng3 != null && eng3[0].equals("Filter")) {
                                %>        
                                <tr>
                                    <td><%=eng3[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                %>
                                <%
                                    if (eng4 != null && eng4[0].equals("Filter")) {
                                %>        
                                <tr>
                                    <td><%=eng4[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                %>
                                <%
                                    if (eng5 != null && eng5[0].equals("Filter")) {
                                %>        
                                <tr>
                                    <td><%=eng5[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                %>
                                <%} else if (listType.equals("Fan")) {%>
                                <tr>
                                    <td>hrSeoul@ManElec.com</td>
                                    <td>5-1-2015</td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a></td>
                                </tr>
                                <tr>
                                    <td>whaLee@ManElec.com</td>
                                    <td>6-1-2015</td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a></td>
                                </tr>
                                <%
                                    if (eng1 != null && eng1[0].equals("Fan")) {
                                %>        
                                <tr>
                                    <td><%=eng1[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                    if (eng2 != null && eng2[0].equals("Fan")) {
                                %>        
                                <tr>
                                    <td><%=eng2[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                    if (eng3 != null && eng3[0].equals("Fan")) {
                                %>        
                                <tr>
                                    <td><%=eng3[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                    if (eng4 != null && eng4[0].equals("Fan")) {
                                %>        
                                <tr>
                                    <td><%=eng4[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                    if (eng5 != null && eng5[0].equals("Fan")) {
                                %>        
                                <tr>
                                    <td><%=eng5[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                } else {
                                    if (eng1 != null) {
                                %>        
                                <tr>
                                    <td><%=eng1[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                    if (eng2 != null) {
                                %>        
                                <tr>
                                    <td><%=eng2[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                    if (eng3 != null) {
                                %>        
                                <tr>
                                    <td><%=eng3[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                    if (eng4 != null) {
                                %>        
                                <tr>
                                    <td><%=eng4[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                    if (eng5 != null) {
                                %>        
                                <tr>
                                    <td><%=eng5[1]%>@ManElec.com </td>
                                    <td><%=today%> </td>
                                    <td><a class="btn-xs btn-danger" href="#"><span class="fui-cross-circle"></span> Remove</a> </td>
                                </tr>
                                <%
                                    }
                                }
                                %>
                            </tbody>
                        </table>
                        <script>
                            $(document).ready(function() {
                                $('#MList').DataTable();
                            });
                        </script>
                    </div>
                    <hr>
                    <a class="btn btn-info" href="" data-toggle="modal" data-target="#myModal2"><span class="fui-plus"></span> Add Engineers</a>
                    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" 
                         aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" 
                                            data-dismiss="modal" aria-hidden="true">
                                        &times;
                                    </button>
                                    <h4 class="modal-title" id="myModalLabel2">
                                        Add Engineer
                                    </h4>
                                </div>

                                <form name="addEng_form" method="post" action="manageAdmin.jsp">
                                    <div class="modal-body">
                                        <p>
                                            You can add up to 5 engineers at a time. Only the first field is compulsory, the rest are optional.
                                        </p>

                                        <div class="form-group">
                                            <label>Equipment Name</label>
                                            <input name="listTypeToAdd" id="listTypeToAdd" value="<%=listType%>">
                                        </div>
                                        <div class="form-group">
                                            <label>Engineer*</label>
                                            <div class="input-group">
                                                <input type="text" class="form-control" value="" placeholder="Enter engineer email" name="engName1" id="engName1" required/><span class="input-group-addon">@ManElec.com</span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label>Additional Engineers</label>
                                            <div class="input-group">
                                                <input type="text" class="form-control" value="" placeholder="Enter engineer email" name="engName2" id="engName2"/><span class="input-group-addon">@ManElec.com</span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <input type="text" class="form-control" value="" placeholder="Enter engineer email" name="engName3" id="engName3"/><span class="input-group-addon">@ManElec.com</span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <input type="text" class="form-control" value="" placeholder="Enter engineer email" name="engName4" id="engName4"/><span class="input-group-addon">@ManElec.com</span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <input type="text" class="form-control" value="" placeholder="Enter engineer email" name="engName5" id="engName5"/><span class="input-group-addon">@ManElec.com</span>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" 
                                                    data-dismiss="modal">Close
                                            </button>
                                            <input class="btn btn-primary" type="submit" value="Add"/>
                                        </div>
                                    </div>
                                </form>
                            </div><!-- /.modal-content -->
                        </div><!-- /.modal -->
                    </div>
                </div>
            </div>
            <% }
            %>
        </div>
    </body>
</html>
