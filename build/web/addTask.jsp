<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>  
<%@include file="protect/mgrProtect.jsp" %>
<%@include file="addTaskSession.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <!-- Loading Bootstrap -->
        <link href="dist/css/vendor/bootstrap.min.css" rel="stylesheet">
        <link href="dist/css/vendor/bootstrap-responsive.css" rel="stylesheet">
        <link href="dist/css/vendor/tabs.css" rel="stylesheet">
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
            <div class="col-sm-12">
                <!-- Guidance and Instructions -->
                <div class="row">

                    <h4>Step 2: Add Tasks to Checklist </h4>
                    <p>
                        You have successfully created the Title and chosen the equipment type. In this step, you will be creating the tasks for the Checklist. Each Task has a Title to it, and details that are optional, you may also choose to add an illustration to aid in your tasks checking.<br>
                        On creating your first task, the submission form will appear. <strong>Submit only when you have completed all your tasks settings.</strong><br>
                        Lastly, remember to keep your instructions short and concise! 
                    </p>
                </div>
                <div class="row">
                    <a class="btn btn-info" href="" data-toggle="modal" data-target="#myModal2"><span class="fui-plus"></span> Add Task</a>
                    <br>
                    <br>
                    <div class="table-responsive">
                        <table style="width: 100%" class="table-striped">
                            <%if (t1 != null) {
                                    if (t1[1] == null) {
                                        t1[1] = "-nil-";
                                    }%>
                            <tr>
                                <td style="padding-top: 20px; padding-bottom: 20px; padding-left: 20px;"> <%=t1[0]%> </td>
                                <td style="padding-right: 20px;">
                                    <div class="pull-right">
                                        <a class="btn-xs btn-info" data-toggle="modal" data-tskTitle="<%=t1[0]%>" data-tskDetails="<%=t1[1]%>" data-id="task1" href="#editModal"><span class="fui-info-circle"></span> Details</a>
                                    </div>
                                </td>
                            </tr>
                            <%}
                                if (t2 != null) {
                                    if (t2[1] == null) {
                                        t2[1] = "-nil-";
                                    }%>
                            <tr>
                                <td style="padding-top: 20px; padding-bottom: 20px; padding-left: 20px;"> <%=t2[0]%> </td>
                                <td style="padding-right: 20px;">
                                    <div class="pull-right">
                                        <a class="btn-xs btn-info" data-toggle="modal" data-tskTitle="<%=t2[0]%>" data-tskDetails="<%=t2[1]%>" data-tskImage="img/capacitor.png" data-id="task2" href="#editModal"><span class="fui-info-circle"></span> Details</a>
                                    </div>
                                </td>
                            </tr>
                            <%}
                                if (t3 != null) {
                                    if (t3[1] == null) {
                                        t3[1] = "-nil-";
                                    }%>
                            <tr>
                                <td style="padding-top: 20px; padding-bottom: 20px; padding-left: 20px;"> <%=t3[0]%> </td>
                                <td style="padding-right: 20px;">
                                    <div class="pull-right">
                                        <a class="btn-xs btn-info" data-toggle="modal" data-tskTitle="<%=t3[0]%>" data-tskDetails="<%=t3[1]%>" data-id="task3" href="#editModal"><span class="fui-info-circle"></span> Details</a>
                                    </div>
                                </td>
                            </tr>
                            <%}
                                if (t4 != null) {
                                    if (t4[1] == null) {
                                        t4[1] = "-nil-";
                                    }%>
                            <tr>
                                <td style="padding-top: 20px; padding-bottom: 20px; padding-left: 20px;"> <%=t4[0]%> </td>
                                <td style="padding-right: 20px;">
                                    <div class="pull-right">
                                        <a class="btn-xs btn-info" data-toggle="modal" data-tskTitle="<%=t4[0]%>" data-tskDetails="<%=t4[1]%>" data-id="task4" href="#editModal"><span class="fui-info-circle"></span> Details</a>
                                    </div>
                                </td>
                            </tr>
                            <%}
                                if (t5 != null) {
                                    if (t5[1] == null) {
                                        t5[1] = "-nil-";
                                    }%>
                            <tr>
                                <td style="padding-top: 20px; padding-bottom: 20px; padding-left: 20px;"> <%=t5[0]%> </td>
                                <td style="padding-right: 20px;">
                                    <div class="pull-right">
                                        <a class="btn-xs btn-info" data-toggle="modal" data-tskTitle="<%=t5[0]%>" data-tskDetails="<%=t5[1]%>" data-id="task5" href="#editModal"><span class="fui-info-circle"></span> Details</a>
                                    </div>
                                </td>
                            </tr>
                            <%}
                            %>
                        </table>
                    </div>


                    <!-- Modal -->
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
                                        Add Task
                                    </h4>
                                </div>

                                <form class="task-form" name="createTask_form" method="post" action="addTask.jsp" >
                                    <div class="modal-body">
                                        <p>
                                            The title is compulsory for each task. In the title, you could have a quick description of the task. If you feel that there are important information that may cause the title to become too lengthy, you may include these information in the Details text box. You may also add a pictorial aid if required.
                                        </p>
                                        <div class="form-group">
                                            <label>Task Title*</label>
                                            <input type="text" class="form-control login-field" value="" placeholder="Enter Title" name="taskTitle" required/>
                                        </div>
                                        <div class="form-group">
                                            <label>Details</label>
                                            <textarea class="form-control" rows="3" name="taskDetails"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputFile">File input</label>
                                            <input type="file" id="picture" name="taskPicture">
                                            <p class="help-block">Upload pictorial aid (if any)</p>
                                        </div>
                                        <div class="modal-footer">
                                            <input class="btn btn-primary" type="submit" value="Add"/>
                                            <button type="button" class="btn btn-default" 
                                                    data-dismiss="modal">Close
                                            </button>
                                            
                                        </div>
                                    </div>
                                </form>
                            </div><!-- /.modal-content -->
                        </div><!-- /.modal -->
                    </div>
                    <!-- Modal -->
                    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" 
                         aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" 
                                            data-dismiss="modal" aria-hidden="true">
                                        &times;
                                    </button>
                                    <h4 class="modal-title" id="myModalLabel2">
                                        View Task Details
                                    </h4>
                                </div>

                                <form class="task-form" name="editTask_form" method="post" action="editAddTask.jsp" >
                                    <div class="modal-body">
                                        <p>
                                            You may edit the inputs accordingly.
                                        </p>
                                        <input type="hidden" name="editID" id="editID"/>
                                        <div class="form-group">
                                            <label>Task Title*</label>
                                            <input type="text" class="form-control login-field" value="" placeholder="Enter Title" name="editTitle" id="editTitle" required/>
                                        </div>
                                        <div class="form-group">
                                            <label>Details</label>
                                            <textarea class="form-control" rows="3" name="editDetails" id="editDetails"></textarea>
                                        </div>
                                        <div class="tile" id="editImage" style="display: none;">
                                            <img src="img/capacitor.png" id="imageCap">
                                        </div>
                                        <div class="form-group">
                                            <label for="taskPicture">File input</label>
                                            <input type="file" id="taskPicture" name="taskPicture">
                                            <p class="help-block">Upload pictorial aid (if any)</p>
                                        </div>
                                        <div class="modal-footer">
                                            <input class="btn btn-primary" type="submit" value="Edit"/>
                                            <button type="button" class="btn btn-default" 
                                                    data-dismiss="modal">Close
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div><!-- /.modal-content -->
                        </div><!-- /.modal -->
                    </div>
                </div>
                <div class="row">
                    <%if (t1 != null) {
                    %>
                    <h4>
                        Submitting the List
                    </h4>
                    <p>
                        Do check if you have anymore changes to make before you create the checklist.
                    </p>
                    <a class="btn btn-warning" href="mylist.jsp?listAdded=done&successmsg=Your%20list%20has%20been%20created!"><span class="fui-check-circle"></span> Create Checklist!</a>
                    <%}
                    %>
                </div>
            </div>
        </div>
        <script>
            $(document).on("click", ".btn-xs", function() {
                var tskTitle = $(this).attr('data-tskTitle');
                var tskID = $(this).attr('data-id');
                var tskDetails = $(this).attr('data-tskDetails');
                var tskImage = "";
                tskImage = $(this).attr('data-tskImage');
                $(".modal-body #editTitle").val(tskTitle);
                $(".modal-body #editID").val(tskID);
                $(".modal-body #editDetails").val(tskDetails);
                if (tskImage.toString() !== "") {
                    document.getElementById("editImage").style.display = "block";
                }
            });
        </script>
    </body>
</html>
