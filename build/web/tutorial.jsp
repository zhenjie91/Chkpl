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
        <script src="//vjs.zencdn.net/4.7/video.js"></script>
        <script>
            videojs.options.flash.swf = "dist/js/vendors/video-js.swf";
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <!-- Manager's Nav Bar -->
        <%@include file="webComponents/navBarMgr.jsp" %>

        <div class="container" style="padding-top: 70px;">

            <div class="row">
                <div class="col-sm-12">
                    <h4>Tutorials </h4>
                    <p>
                        You can find several videos with step-by-step guides to using the functions available to you below.  
                    </p>
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
                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                        <div class="tile">
                            <img src="img/icons/svg/pencils.svg" alt="Compas" class="tile-image big-illustration">
                            <h3 class="tile-title">Customized Aids</h3>
                            <p>CheckPal has a customized Checklist creator just 
                                for you. Check out the video on the right to find 
                                out how you can create your own lists. So what are 
                                you waiting for? Start Creating those lists now!
                            </p>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                        <video class="video-js" preload="auto" poster="img/CLposter.jpg" data-setup="{}">
                            <source src="https://dl.dropboxusercontent.com/u/65070770/vid/createlist.mp4" type="video/mp4">
                            <source src="https://dl.dropboxusercontent.com/u/65070770/vid/webm/createlist.webm" type="video/webm">
                        </video>
                    </div>
                </div>
            </div> <!-- /tiles -->
            <hr>


            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                        <div class="tile">
                            <img src="img/icons/svg/clipboard.svg" alt="Infinity-Loop" class="tile-image">
                            <h3 class="tile-title">Keep Track of My Lists</h3>
                            <p>
                                This tutorial shows you where you can find all the lists created so far. 
                                You can also find out how to view the details for the lists.
                            </p>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                        <video class="video-js" preload="auto" poster="img/VLposter.jpg" data-setup="{}">
                            <source src="https://dl.dropboxusercontent.com/u/65070770/vid/viewlist.mp4" type="video/mp4">
                            <source src="https://dl.dropboxusercontent.com/u/65070770/vid/webm/viewlist.webm" type="video/webm">
                        </video>
                    </div>
                </div>
            </div> <!-- /tiles -->
            <hr>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                        <div class="tile">
                            <img src="img/icons/svg/retina.svg" alt="Pensils" class="tile-image">
                            <h3 class="tile-title">View Lists by Equipment</h3>
                            <p>
                                In this tutorial, we show you how to view the submissions 
                                for your engineers. You will also learn how to view the individual reports.
                            </p>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                        <video class="video-js" preload="auto" poster="img/TSposter.jpg" data-setup="{}">
                            <source src="https://dl.dropboxusercontent.com/u/65070770/vid/submission.mp4" type="video/mp4">
                            <source src="https://dl.dropboxusercontent.com/u/65070770/vid/webm/submission.webm" type="video/webm">
                        </video>
                    </div>
                </div>
            </div> <!-- /tiles -->
            <hr>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                        <div class="tile">
                            <img src="img/icons/svg/book.svg" alt="Chat" class="tile-image">
                            <h3 class="tile-title">Administration</h3>
                            <p>
                                Here, you will be able to find out how to add equipments and view the 
                                engineers attached to each equipment. And of course, you will also learn
                                how to add more engineers to each equipment.
                            </p>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                        <video class="video-js" preload="auto" poster="img/MAposter.jpg" data-setup="{}">
                            <source src="https://dl.dropboxusercontent.com/u/65070770/vid/manageadmin.mp4" type="video/mp4">
                            <source src="https://dl.dropboxusercontent.com/u/65070770/vid/webm/manageadmin.webm" type="video/webm">
                        </video>
                    </div>
                </div>
            </div> <!-- /tiles -->



        </div>

    </body>
</html>
