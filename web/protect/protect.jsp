<%
    Object userSession;
// check if user is authenticated

    userSession = session.getAttribute("authenticated.user");
    String user = null;
    if(userSession != null){
        user = userSession.toString();
    }
    String errorMsg = request.getParameter("errorMsg");
    if (errorMsg == null) {
        errorMsg = "";
    }

    if (user != null && user.equals("mgr")) {
        response.sendRedirect("adminDisplay.jsp");
    } else if (user != null && user.equals("eng")) {
        response.sendRedirect("display.jsp");
    } else {
        // restart
        session.invalidate();
    }
%>