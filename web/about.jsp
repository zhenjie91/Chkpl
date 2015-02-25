<%@page contentType="text/html" pageEncoding="UTF-8"%>  

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
        <title>About</title>
    </head>
    <body style="padding-top: 70px;">
        <!-- Manager's Nav Bar -->
        <div class="row">
            <div class="col-xs-12">
                <nav class="navbar navbar-inverse navbar-embossed navbar-fixed-top" role="navigation">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-01">
                                <span class="sr-only">Toggle navigation</span>
                            </button>
                            <a class="navbar-brand" href="index.jsp">Home</a>
                        </div>

                        <ul class="nav navbar-nav navbar-right">


                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Hello! <b class="caret"></b></a>
                                <span class="dropdown-arrow"></span>
                                <ul class="dropdown-menu">
                                    <li><a href="#"><span class="fui-user"></span> Profile</a></li>
                                    <li class="divider"></li>
                                    <li><a href="logout.jsp"><span class="fui-exit"></span> Logout </a></li>
                                </ul>
                            </li>

                        </ul>
                    </div>
            </div>
            <!-- /.navbar-collapse -->
        </nav>
        <!-- /navbar -->
    </div>
</div>
<div class="container">
    <div class="row">
        <h3>About CheckPal</h3>

        <p>
            CheckPal is a solution envisioned to help minimize equipment checking problems. It helps by having the important steps listed down as a checklist such that in common everyday routine checks, it would be sufficient to cover the checks. This way, it can be more appealing to workers who face the thick Standard Operation Procedures (SOP) everyday.
        </p>


        <hr>
        <h3>The Prototype</h3>
        <p>
            This prototype is built using NetBeans IDE 7.3, running on Apache Tomcat 7.0.34.0. It is a Java based application that primarily uses JSP only. For the UI, we are using the free version of Flat-UI provided by Designmodo.
        </p>
    </div> <!-- /tiles -->
</div>


<footer>
    <div class="container">
        <div class="row">
            <div class="col-xs-7">
                <h3 class="footer-title">Interaction Design and Prototyping</h3>
                <p>
                    This is a project done for IS306-IDP by G2T1. We hope you enjoy playing around with the prototype!
                </p>
                <a class="footer-brand" href="http://designmodo.com" target="_blank">
                    <img src="img/login/CKSTEPPAL_edited-1.png" />
                </a>
            </div> <!-- /col-xs-7 -->

            <div class="col-xs-5">
                <div class="footer-banner">
                    <h3 class="footer-title">Get Flat UI Pro</h3>
                    <ul>
                        <li>Tons of Basic and Custom UI Elements</li>
                        <li>A Lot of Useful Samples</li>
                        <li>More Vector Icons and Glyphs</li>
                        <li>Pro Color Swatches</li>
                        <li>Bootstrap Based HTML/CSS/JS Layout</li>
                    </ul>
                    Go to: <a href="http://designmodo.com/flat" target="_blank">designmodo.com/flat</a>
                </div>
            </div>
        </div>
    </div>
</footer>
</body>
</html>
