<%@page import="java.util.ArrayList"%>
<%
    //Main Details of List
    String listTitle = request.getParameter("ListTitle");
    String listType = request.getParameter("ListType");
    String[] listDetails = new String[2];
    if (listTitle != null){
        listDetails[0] = listTitle;
        listDetails[1] = listType; 
        session.setAttribute("listDetails", listDetails);
    }
    // Task Details of List
    // I will be storing each added task as a session attribute each
    String[] task1 = null;
    String[] task2 = null;
    String[] task3 = null;
    String[] task4 = null;
    String[] task5 = null;
    
    // Retrieve parameters, I am going to ignore the uploaded image, since in the prototype, 
    // it will be what we want them to add and when we show it, I will just take from our web server
    String taskTitle = request.getParameter("taskTitle");
    String taskDetails = request.getParameter("taskDetails");
    
    // Retrieve session attributes if any
    String[] t1 = (String[])session.getAttribute("task1");
    String[] t2 = (String[])session.getAttribute("task2");
    String[] t3 = (String[])session.getAttribute("task3");
    String[] t4 = (String[])session.getAttribute("task4");
    String[] t5 = (String[])session.getAttribute("task5");
    
    //Validate if any request came in for adding task
    boolean pass = false;
    if (taskTitle != null){
        pass = true;
    }
    
    if (pass && t1 == null){
       task1 = new String[2];
       task1[0] = taskTitle;
       task1[1] = taskDetails;
       session.setAttribute("task1", task1);
       t1 = task1;
    } else if (pass && t2 == null){
       task2 = new String[2];
       task2[0] = taskTitle;
       task2[1] = taskDetails;
       session.setAttribute("task2", task2);
       t2 = task2;
    } else if (pass && t3 == null){
       task3 = new String[2];
       task3[0] = taskTitle;
       task3[1] = taskDetails;
       session.setAttribute("task3", task3);
       t3 = task3;
    } else if (pass && t4 == null){
       task4 = new String[2];
       task4[0] = taskTitle;
       task4[1] = taskDetails;
       session.setAttribute("task4", task4);
       t4 = task4;
    } else if (pass && t5 == null){
       task5 = new String[2];
       task5[0] = taskTitle;
       task5[1] = taskDetails;
       session.setAttribute("task5", task5);
       t5 = task5;
    } else {
        
    }
%>
