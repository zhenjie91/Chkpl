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
        <!-- Loading Flat UI -->
        <link href="dist/css/flat-ui.css" rel="stylesheet">
        <!-- Loading Favicon -->
        <link rel="shortcut icon" href="img/favicon1.ico">
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="dist/js/vendor/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="dist/js/flat-ui.min.js"></script>
        <script src="docs/assets/js/application.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body style="padding-top: 70px;">
        <!-- Engineer's Nav Bar -->
        <%@include file="webComponents/navBarEng.jsp" %>

        <div class="container">
            <div class="row">

                <div class="todo">
                    <h4>Checklist: <%=listTitle%> </h4>
                    <ul>
                        <li>
                            <div class="todo-icon fui-list"></div>
                            <div class="todo-content">
                                <h4 class="todo-name">
                                    Check <strong>standard air flow</strong>
                                </h4>
                                H/M/L (m³/min)
                            </div>
                        </li>
                        <li>
                            <div class="todo-icon fui-list"></div>
                            <div class="todo-content">
                                <h4 class="todo-name">
                                    Check <strong>sound level pressure</strong>
                                </h4>
                                H/M/L dB•A
                            </div>
                        </li>
                        <li>
                            <div class="todo-icon fui-list"></div>
                            <div class="todo-content">
                                <h4 class="todo-name">
                                    Check <strong>maximum current</strong> in <strong>heating conditions</strong> (A)
                                </h4>
                                
                            </div>
                        </li>
                        <li>
                            <div class="todo-icon fui-list"></div>
                            <div class="todo-content">
                                <h4 class="todo-name">
                                    Check <strong>power factor </strong>in (%)
                                </h4>
                                As soon as possible
                            </div>
                        </li>
                        <li>
                            <div class="todo-icon fui-list"></div>
                            <div class="todo-content">
                                <h4 class="todo-name">
                                    Check <strong>cooling condition</strong>
                                </h4>
                                Condition has to meet -14 - 46 degrees
                            </div>
                        </li>
                        <li>
                            <div class="todo-icon fui-list"></div>
                            <div class="todo-content">
                                <h4 class="todo-name">
                                    Check <strong>Cooling</strong> and <strong>heating</strong> capacity
                                </h4>
                                Units of measurement is in kW
                            </div>
                        </li>
                        <li>
                            <div class="todo-icon fui-list"></div>
                            <div class="todo-content">
                                <h4 class="todo-name">
                                    Check speed of fan
                                </h4>
                                
                            </div>
                        </li>
                    </ul>
                </div><!-- /.todo -->
            </div><!-- /.col-xs-4 -->
            <div class="row">
                <h4>Submission!</h2>
                    <p>
                        Do check that you have done your checks correctly, upon submission, you will no longer be able to edit any details in this particular list.

                    </p>
                    <form name="submit_form" method="post" action="display.jsp">
                        <label>Fill in the ISSN:</label>
                        <div class="form-inline">
                            <div class="form-inline form-group">
                                <input type="text" class="form-control login-field" value="" placeholder="Enter the ISSN" name="ISSN1" required/> - <input type="text" class="form-control login-field" value="" placeholder="" name="ISSN3" required/> - <input type="text" class="form-control login-field" value="" placeholder="" name="ISSN3" required/>   <input class="btn btn-primary btn-lg right" type="submit" value="Submit">

                            </div>
                        </div>
                        <p>
                            It is optional for you to fill in the comments. However if there are any cases where you have stated a check has failed and the reason is not clear, your manager may approach you to ask about it.
                        </p>
                    </form>
                    <textarea class="form-control login-field " rows="4" cols="50" name="comment" form="submit_form">Enter comment here...</textarea>
            </div>
        </div>

    </body>
</html>

