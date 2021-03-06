<%@page contentType="text/html" pageEncoding="UTF-8"%>  
<%@include file="protect/engProtect.jsp" %>
<!DOCTYPE html>
<%
    String listTitle = request.getParameter("ListTitle");
%>
<html>
    <head>
        <!-- Loading Bootstrap -->
        <link href="dist/css/vendor/bootstrap.min.css" rel="stylesheet">
        <link href="dist/css/vendor/bootstrap-responsive.css" rel="stylesheet">
        <!-- Loading Flat UI -->
        <link href="dist/css/flat-ui.css" rel="stylesheet">
        <!-- Loading Custom UI -->
        <link href="dist/css/todolist.css" rel="stylesheet">
        <!-- Loading Favicon -->
        <link rel="shortcut icon" href="img/favicon1.ico">
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="dist/js/vendor/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="dist/js/flat-ui.min.js"></script>
        <script src="docs/assets/js/application.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Do List</title>
    </head>
    <body>
        <!-- Engineer's Nav Bar -->
        <%@include file="webComponents/navBarEng.jsp" %>

        <div class="container" style="padding-top: 70px;">
            <div class="row">
                <div class="col-sm-12">
                    <h4>Checklist: <%=listTitle%> </h4>

                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-sm-12">
                    <div class="todoBox">
                        <table style="width: 100%">
                            <tr>
                                <td>
                                    <h6>
                                        Check <strong>standard air flow</strong>
                                    </h6>
                                </td>
                                <td>
                                    <div style="text-align: right">
                                        <a class="btn btn-info" href="" data-toggle="modal" data-target="#myModal"><span class="fui-eye"></span> Details</a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <button type="button" class="btn btn-success pull-right" id="done1" style="display: none;"><span class="fui-check"></span> Done!</button>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="todoBox">
                        <table style="width: 100%">
                            <tr>
                                <td>
                                    <h6>
                                        <strong>Voltage of capacitor</strong> in compressor
                                    </h6>
                                </td>
                                <td>
                                    <div style="text-align: right">
                                        <a class="btn btn-info" href="" data-toggle="modal" data-target="#myModal2"><span class="fui-eye"></span> Details</a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <button type="button" class="btn btn-success pull-right" id="done2" style="display: none;"><span class="fui-check"></span> Done!</button>
                                </td>
                            </tr>
                        </table>
                    </div>

                    <div class="todoBox">
                        <table style="width: 100%">
                            <tr>
                                <td>
                                    <h6>
                                        Check <strong>maximum current</strong> in <strong>heating conditions</strong> (A)
                                    </h6>
                                </td>
                                <td>
                                    <div style="text-align: right">
                                        <a class="btn btn-info" href="" data-toggle="modal" data-target="#myModal3"><span class="fui-eye"></span> Details</a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <button type="button" class="btn btn-success pull-right" id="done3" style="display: none;"><span class="fui-check"></span> Done!</button>
                                </td>
                            </tr>
                        </table>
                    </div>

                    <div class="todoBox">
                        <table style="width: 100%">
                            <tr>
                                <td>
                                    <h6>
                                        Check <strong>power factor</strong>
                                    </h6>
                                </td>
                                <td>
                                    <div style="text-align: right">
                                        <a class="btn btn-info" href="" data-toggle="modal" data-target="#myModal4"><span class="fui-eye"></span> Details</a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <button type="button" class="btn btn-success pull-right" id="done4" style="display: none;"><span class="fui-check"></span> Done!</button>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="todoBox">
                        <table style="width: 100%">
                            <tr>
                                <td>
                                    <h6>
                                        Check <strong>Cooling</strong> conditions
                                    </h6>
                                </td>
                                <td>
                                    <div style="text-align: right">
                                        <a class="btn btn-info" href="" data-toggle="modal" data-target="#myModal5"><span class="fui-eye"></span> Details</a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <button type="button" class="btn btn-success pull-right" id="done5" style="display: none;"><span class="fui-check"></span> Done!</button>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="todoBox">
                        <table style="width: 100%">
                            <tr>
                                <td>
                                    <h6>
                                        Check <strong>cooling and heating</strong> conditions
                                    </h6>
                                </td>
                                <td>
                                    <div style="text-align: right">
                                        <a class="btn btn-info" href="" data-toggle="modal" data-target="#myModal6"><span class="fui-eye"></span> Details</a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <button type="button" class="btn btn-success pull-right" id="done6" style="display: none;"><span class="fui-check"></span> Done!</button>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <%@include file="engDetailsModal/detailsModal.jsp" %>
                    <%@include file="engDetailsModal/detailsModal2.jsp" %>
                    <%@include file="engDetailsModal/detailsModal3.jsp" %>
                    <%@include file="engDetailsModal/detailsModal4.jsp" %>
                    <%@include file="engDetailsModal/detailsModal5.jsp" %>
                    <%@include file="engDetailsModal/detailsModal6.jsp" %>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <h4>Submission!</h2>
                        <p>
                            Do check that you have done your checks correctly, upon submission, you will no longer be able to edit any details in this particular list.

                        </p>
                        <form name="submit_form" method="post" action="display.jsp?successmsg=Your%20submission%20has%20been%20recorded!">
                            <label>Fill in the ISSN:</label>

                            <div class="form-inline">
                                <div class="form-inline form-group">
                                    <input type="text" class="form-control login-field" value="" placeholder="Enter the ISSN" name="ISSN1" maxlength="3" required/> - <input type="text" class="form-control login-field" value="" placeholder="" name="ISSN3" maxlength="3" required/> - <input type="text" class="form-control login-field" value="" placeholder="" name="ISSN3" maxlength="3" required/>

                                </div>
                            </div>
                            <p>
                                It is optional for you to fill in the comments. However if there are any cases where you have stated a check has failed and the reason is not clear, your manager may approach you to ask about it.
                            </p>
                        
                        <textarea class="form-control login-field " rows="4" cols="50" name="comment" form="submit_form">Enter comment here...</textarea>
                        <br/>
                       <input class="btn btn-primary btn-lg right" type="submit" value="Submit">
                        </form>
                        <br/>
                        <br/>
                </div>
            </div>
        </div>

    </body>
</html>

