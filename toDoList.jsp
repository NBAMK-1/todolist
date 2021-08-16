<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 13-08-2021
  Time: 18:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TO DO LIST</title>
</head>
<body>
<form action="toDoList.jsp">
    Add new Item: <input type="text" name = "theItem"/>
    <input type="submit" value = "Submit"/>
</form>

<%
    List<String> items =(List<String>) session.getAttribute("myToDoList");
    if(items == null){
        items = new ArrayList<String>();
        session.setAttribute("myToDoList",items);
    }

    String theItem = request.getParameter("theItem");
    if(theItem != null){
        items.add(theItem);
    }
%>

<hr>
<b>To  List Item:</b><br/>
<ol>
    <%
        for(String temp : items){
            out.println("<li>"+temp+"</li>");
        }
    %>
</ol>

</body>
</html>
