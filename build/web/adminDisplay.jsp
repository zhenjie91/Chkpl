<%@page contentType="text/html" pageEncoding="UTF-8"%>  
<%@include file="protect/mgrProtect.jsp" %>
<%
    String successmsg = request.getParameter("successmsg");
%>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <!-- Manager's Nav Bar -->
        <%@include file="webComponents/navBarMgr.jsp" %>

        <div class="container" style="padding-top: 70px;">

            <div class="row">
                <div class="col-sm-12">
                    <h4>Home</h4>
                </div>
            </div>
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
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
                        <div class="tile">
                            <img src="img/icons/svg/pencils.svg" alt="Compas" class="tile-image big-illustration">
                            <h3 class="tile-title">Customized Aids</h3>
                            <p>Build customized checklists to aid in checks</p>
                            <a class="btn btn-primary btn-large btn-block" href="createList.jsp">Create List</a>
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
                        <div class="tile">
                            <img src="img/icons/svg/clipboard.svg" alt="Infinity-Loop" class="tile-image">
                            <h3 class="tile-title">Keep Track of My Lists</h3>
                            <p>Find, manage and version-control all of your lists here</p>
                            <a class="btn btn-primary btn-large btn-block" href="mylist.jsp">View All Lists</a>
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
                        <div class="tile">
                            <img src="img/icons/svg/retina.svg" alt="Pensils" class="tile-image">
                            <h3 class="tile-title">View Lists by Equipment</h3>
                            <p>Track submissions of checklists by equipments</p>
                            <a class="btn btn-primary btn-large btn-block" href="engineerlist.jsp">Track Submissions</a>
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
                        <div class="tile">
                            <img src="img/icons/svg/book.svg" alt="Chat" class="tile-image">
                            <h3 class="tile-title">Administration</h3>
                            <p>View, Add, and Manage equipments here.</p>
                            <a class="btn btn-primary btn-large btn-block" href="manageAdmin.jsp">Manage Admin</a>
                        </div>

                    </div>

                </div> <!-- /tiles -->

            </div>
        </div>


    </body>
</html>
