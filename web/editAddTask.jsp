<%@page import="java.util.ArrayList"%>
<%
    // Retrieve parameters, I am going to ignore the uploaded image, since in the prototype, 
    // it will be what we want them to add and when we show it, I will just take from our web server
    String editTitle = request.getParameter("editTitle");
    String editDetails = request.getParameter("editDetails");
    String editID = request.getParameter("editID");
    // Retrieve session attributes if any
    String[] taskToEdit = (String[])session.getAttribute(editID);
    taskToEdit[0] = editTitle;
    taskToEdit[1] = editDetails;
    
    //Reset session attribute
    session.setAttribute(editID, taskToEdit);
    
%>
<jsp:forward page="/addTask.jsp">
    <jsp:param name="errorMsg" value="Successfully edited!" />
</jsp:forward>