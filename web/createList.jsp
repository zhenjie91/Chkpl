<%@page contentType="text/html" pageEncoding="UTF-8"%>  
<%@include file="protect/mgrProtect.jsp" %>
<%
    Object newEquip = session.getAttribute("newEquipment");
    String equip = null;
    if (newEquip != null) {
        equip = newEquip.toString();
    }

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
        <title>Create</title>
    </head>
    <body>
        <!-- Manager's Nav Bar -->
        <%@include file="webComponents/navBarMgr.jsp" %>

        <div class="container" style="padding-top: 70px;">
            <!-- Guidance and Instructions -->
            <div class="row">
                <div class="col-sm-12">
                    <h4>Step 1: Create Checklist Title and allocate Equipment</h4>
                    <p>
                        Welcome to the Create List Wizard! In this wizard, you will have to create the List name which will be visible in your engineer's MyList menu. Select the equipment that this list will be added to such that only the engineers in-charge of that equipment can see it. The default choice is Motherboard, so do make sure you have checked your option.<br>
                        Once you are satisfied with your inputs, click on "Start Creating Tasks!".
                    </p>
                </div>
            </div>
            <!-- Create List Title, Select Type of Equipment -->
            <div class="row">
                <div class="col-sm-12">
                    <form class="login-form" name="createList_form" method="post" action="addTask.jsp">
                        <div class="share mrl">
                            <ul>
                                <li class="form-group">
                                    <label>Title</label>
                                    <input type="text" class="form-control login-field" value="" placeholder="Enter Title" name="ListTitle" required/>
                                </li>
                                <li class="form-group">
                                    <label>Equipment</label><br>
                                    <select class="form-control login-field select" data-toggle="select" name="ListType">
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
                                </li>
                            </ul>
                            <input class="btn btn-primary btn-block btn-large" type="submit" value="Start Creating Tasks!"/>
                        </div> 
                    </form>
                </div>
            </div>
        </div> 
    </body>
</html>
