<%@page contentType="text/html" pageEncoding="UTF-8"%>  
<%@include file="protect/engProtect.jsp" %>
<%
    String successmsg = request.getParameter("successmsg");
%>
<!DOCTYPE html>
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
                <a href="#" class="alert-link"> <%=successmsg %> </a>
            </div>

            <%            }
            %>
            <div class="row">
                <div class="col-sm-12">
                    <div class="col-sm-3">
                        <div class="tile">
                            <img src="img/icons/svg/clipboard.svg" alt="Infinity-Loop" class="tile-image">
                            <h3 class="tile-title">Keep Track of My Lists</h3>
                            <p>View the lists that are active for your usage in checking the equipments</p>
                            <a class="btn btn-primary btn-large btn-block" href="mylistEng.jsp">View All Lists</a>
                        </div>
                    </div>
                </div>
            </div> <!-- /tiles -->
        </div>

    </body>
</html>
