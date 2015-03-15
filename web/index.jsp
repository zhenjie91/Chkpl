<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="protect/protect.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <!-- Loading Bootstrap -->
        <link href="dist/css/vendor/bootstrap.min.css" rel="stylesheet">
        <!-- Loading Flat UI -->
        <link href="dist/css/flat-ui.css" rel="stylesheet">
        <!-- Loading Login UI -->
        <link href="dist/css/login_Chkpl.css" rel="stylesheet">
        <!-- Loading Favicon -->
        <link rel="shortcut icon" href="img/favicon1.ico">
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="dist/js/vendor/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="dist/js/flat-ui.min.js"></script>
        <script src="docs/assets/js/application.js"></script>
        <title>CheckPal</title>
    </head>
    <body style="background-color: #1abc9c;">


        <div class='container'>
            <div class='row'>
                
                <div class='col-sm-4 col-sm-offset-4 col-md-4 col-md-offset-4'>
                    <div class='text-center'>
                        <img src="img/login/checkpal.png" alt="Welcome to CheckPal" height="150" width="150"/>
                        <h4>Welcome to <small>CheckPal</small></h4>
                    </div>
                </div>
            </div>



            <div class='row'>
                <div class='col-xs-12 col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2'>
                    <form class="login-form" name="login_form" method="post" action="authenticate.jsp">
                        <div class="form-group">
                            <input type="text" class="form-control login-field" value="" placeholder="Enter your username" name="username" />
                            <label class="login-field-icon fui-user" for="login-name"></label>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control login-field" value="" placeholder="Password" name="password" />
                            <label class="login-field-icon fui-lock" for="login-pass"></label>
                        </div>
                        <input class="btn btn-primary btn-lg btn-block" type="submit" value="Log In">
                        <a class="login-link" href="#">Lost your password?</a>
                        <b style="color:red;"><%=errorMsg%></b>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
