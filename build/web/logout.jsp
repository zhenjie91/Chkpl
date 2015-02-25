<%
session.removeAttribute("authenticated.user");
session.removeAttribute("task1");
session.removeAttribute("task2");
session.removeAttribute("task3");
session.removeAttribute("task4");
session.removeAttribute("task5");
session.invalidate(); 
%>
<jsp:forward page="index.jsp" />