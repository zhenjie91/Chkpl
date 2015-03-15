<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%
    Object newEquip = session.getAttribute("newEquipment");
    String equip = request.getParameter("equipName");
    String title = "Equipments";
    if (equip != null) {
        session.setAttribute("newEquipment", equip);
    }
    if (newEquip != null) {
        equip = newEquip.toString();
    }
    String listType = request.getParameter("ListType");
    if (listType != null) {
        title = listType;
    }
    String listTypeToAdd = request.getParameter("listTypeToAdd");
    // Task Details of List
    // I will be storing each added task as a session attribute each
    String[] eng1 = (String[]) session.getAttribute("eng1");
    String[] eng2 = (String[]) session.getAttribute("eng2");
    String[] eng3 = (String[]) session.getAttribute("eng3");
    String[] eng4 = (String[]) session.getAttribute("eng4");
    String[] eng5 = (String[]) session.getAttribute("eng5");

    // Retrieve parameters, I am going to ignore the uploaded image, since in the prototype, 
    // it will be what we want them to add and when we show it, I will just take from our web server

    
    // Retrieve session attributes if any
    String e1 = (String) request.getParameter("engName1");
    String e2 = (String) request.getParameter("engName2");
    String e3 = (String) request.getParameter("engName3");
    String e4 = (String) request.getParameter("engName4");
    String e5 = (String) request.getParameter("engName5");

    //Validate if any request came in for adding task
    if (listTypeToAdd != null) {
        if (!e1.isEmpty() && eng1 == null) {
            eng1 = new String[2];
            eng1[0] = listTypeToAdd;
            eng1[1] = e1;
            session.setAttribute("eng1", eng1);
        }
        if (!e2.isEmpty() && eng2 == null) {
            eng2 = new String[2];
            eng2[0] = listTypeToAdd;
            eng2[1] = e2;
            session.setAttribute("eng2", eng2);
        }
        if (!e3.isEmpty() && eng3 == null) {
            eng3 = new String[2];
            eng3[0] = listTypeToAdd;
            eng3[1] = e3;
            session.setAttribute("eng3", eng3);
        }
        if (!e4.isEmpty() && eng4 == null) {
            eng4 = new String[2];
            eng4[0] = listTypeToAdd;
            eng4[1] = e4;
            session.setAttribute("eng4", eng4);
        }
        if (!e5.isEmpty() && eng5 == null) {
            eng5 = new String[2];
            eng5[0] = listTypeToAdd;
            eng5[1] = e5;
            session.setAttribute("eng5", eng5);
        }
        listType = listTypeToAdd;
        title = listTypeToAdd;
    }

    String today = "";
    Date date = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
    today = sdf.format(date);
%>