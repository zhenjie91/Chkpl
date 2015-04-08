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
                                    <p>
                                    <ul>
                                        <li>Units of measurements is in m³/min</li>
                                        <li>Run twice and take the average</li>
                                        <li>Range of readings from H/M/L </li>
                                        <li>If 'L', fail the task</li>
                                    </ul>
                                    </p> 
                                </td>
                            </tr><tr>
                                <td>
                                    <div style="text-align: right">
                                        <button type="button" class="btn btn-success pull-left" onclick="tokenAdd1('pass1', 'fail1', 'done1');
                                                sendInfo(1, 'Pass');" id="pass1"
                                                data-dismiss="modal">Pass
                                        </button>
                                        <button type="button" class="btn btn-danger pull-left" onclick="tokenMinus1('pass1', 'fail1', 'done1');
                                                sendInfo(1, 'Fail');" id="fail1"
                                                data-dismiss="modal">Fail
                                        </button>
                                        <button type="button" class="btn btn-info pull-right" id="done1" style="display: none;"><span class="fui-check"></span> Done!</button>
                                    </div>
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
                                    <p>
                                    <ul>
                                        <li>Test voltage readings for pins pairings: 1-2, 1-3, 2-3</li>
                                        <li>Pass task if all pairs have current passing through</li>
                                    </ul>
                                    </p>
                                    <div class="tile">
                                        <img src="img/capacitor.png">
                                    </div>
                                </td>
                            </tr><tr>
                                <td>
                                    <div style="text-align: right">
                                        <button type="button" class="btn btn-success pull-left" onclick="tokenAdd1('pass2', 'fail2', 'done2');
                                                sendInfo(2, 'Pass');" id="pass2"
                                                data-dismiss="modal">Pass
                                        </button>
                                        <button type="button" class="btn btn-danger pull-left" onclick="tokenMinus1('pass2', 'fail2', 'done2');
                                                sendInfo(2, 'Fail');" id="fail2"
                                                data-dismiss="modal">Fail
                                        </button>
                                        <button type="button" class="btn btn-info pull-right" id="done2" style="display: none;"><span class="fui-check"></span> Done!</button>
                                    </div>
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
                                    <p>
                                    <ul>
                                        <li>Push unit to maximum voltage before overheating</li>
                                        <li>Monitor temperature increase as you increase the voltage</li>
                                    </ul>
                                    </p>
                                </td>
                            </tr><tr>
                                <td>
                                    <div style="text-align: right">
                                        <button type="button" class="btn btn-success pull-left" onclick="tokenAdd1('pass3', 'fail3', 'done3');
                                                sendInfo(3, 'Pass');" id="pass3"
                                                data-dismiss="modal">Pass
                                        </button>
                                        <button type="button" class="btn btn-danger pull-left" onclick="tokenMinus1('pass3', 'fail3', 'done3');
                                                sendInfo(3, 'Fail');" id="fail3"
                                                data-dismiss="modal">Fail
                                        </button>
                                        <button type="button" class="btn btn-info pull-right" id="done3" style="display: none;"><span class="fui-check"></span> Done!</button>
                                    </div>
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
                                    <p>
                                    <ul>
                                        <li>Push unit to maximum voltage before overheating</li>
                                        <li>Monitor temperature increase as you increase the voltage</li>
                                        <li><strong>Convert measurements to &#37;</strong></li>
                                    </ul>
                                    </p>
                                </td>
                            </tr><tr>
                                <td>
                                    <div style="text-align: right">
                                        <button type="button" class="btn btn-success pull-left" onclick="tokenAdd1('pass4', 'fail4', 'done4');
                                                sendInfo(4, 'Pass');" id="pass4"
                                                data-dismiss="modal">Pass
                                        </button>
                                        <button type="button" class="btn btn-danger pull-left" onclick="tokenMinus1('pass4', 'fail4', 'done4');
                                                sendInfo(4, 'Fail');" id="fail4"
                                                data-dismiss="modal">Fail
                                        </button>
                                        <button type="button" class="btn btn-info pull-right" id="done4" style="display: none;"><span class="fui-check"></span> Done!</button>
                                    </div>
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
                                    <p>
                                        Condition has to meet -14 - 46 degrees.
                                    </p>
                                </td>
                            </tr><tr>
                                <td>
                                    <div style="text-align: right">
                                        <button type="button" class="btn btn-success pull-left" onclick="tokenAdd1('pass5', 'fail5', 'done5');
                                                sendInfo(5, 'Pass');" id="pass5"
                                                data-dismiss="modal">Pass
                                        </button>
                                        <button type="button" class="btn btn-danger pull-left" onclick="tokenMinus1('pass5', 'fail5', 'done5');
                                                sendInfo(5, 'Fail');" id="fail5"
                                                data-dismiss="modal">Fail
                                        </button>
                                        <button type="button" class="btn btn-info pull-right" id="done5" style="display: none;"><span class="fui-check"></span> Done!</button>
                                    </div>
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
                                    <p>
                                        Units of measurement is in &#176;C
                                    </p>
                                </td>
                            </tr><tr>
                                <td>
                                    <div style="text-align: right">
                                        <button type="button" class="btn btn-success pull-left" onclick="tokenAdd1('pass6', 'fail6', 'done6');
                                                sendInfo(6, 'Pass');" id="pass6"
                                                data-dismiss="modal">Pass
                                        </button>
                                        <button type="button" class="btn btn-danger pull-left" onclick="tokenMinus1('pass6', 'fail6', 'done6');
                                                sendInfo(6, 'Fail');" id="fail6"
                                                data-dismiss="modal">Fail
                                        </button>
                                        <button type="button" class="btn btn-info pull-right" id="done6" style="display: none;"><span class="fui-check"></span> Done!</button>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
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
        <script>
                                            function tokenAdd1(p, f, d) {
                                                document.getElementById(f).innerHTML = "Edit to Fail";
                                                document.getElementById(p).disabled = true;
                                                document.getElementById(f).disabled = false;
                                                document.getElementById(d).style.display = "block";
                                            }
                                            function tokenMinus1(p, f, d) {
                                                document.getElementById(p).innerHTML = "Edit to Pass";
                                                document.getElementById(f).disabled = true;
                                                document.getElementById(p).disabled = false;
                                                document.getElementById(d).style.display = "block";
                                            }
        </script>
    </body>
</html>

