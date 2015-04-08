<%@page import="dao.DataWriter"%>
<%
    // initial declarations
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    boolean clear = false;
    String managerCode = "mgr";
    String managerName = "mickeyMouse";
    String managerPW = "mouse123";
    
    String engineerCode = "eng";
    String engineerName = "jayZee";
    String engineerPW = "jz456";

    if (username != null && password != null) {
        clear = true; 
    } else {
        clear = false;
    }
    if (clear && username.equals(managerName) && password.equals(managerPW)) {
        session.setAttribute("authenticated.user", managerCode);
        response.sendRedirect("/adminDisplay.jsp");
        return;
    } else if(clear && username.equals(engineerName) && password.equals(engineerPW)) {
        session.setAttribute("authenticated.user", engineerCode);
        response.sendRedirect("/display.jsp");
        return;
    } else {
    %>       
<jsp:forward page="/index.jsp">
    <jsp:param name="errorMsg" value="Invalid username/password" />
</jsp:forward>
<%    } %>  
