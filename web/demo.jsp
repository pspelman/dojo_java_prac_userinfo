<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Phil
  Date: 5/4/18
  Time: 11:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>DemoJSP :)</title>
    <link rel="stylesheet" href="/resources/css/styles.css">

</head>
<body>
<div class="container">
    <h1>Hey Wirrrrrrrld</h1>
    <%-- this is a thing --%>
    <!-- this is a thing -->
    <%!
        public int subtract(int a, int b) {
            System.out.println("subtracting A - B = " + (a - b));
            return a - b;
        }
    %>

    >
    <body>
    <!-- this is a declaration tag for methods -->
    <%!
        public int add(int a, int b) {
            System.out.println("adding A + B = " + (a + b));
            return a + b;
        }
    %>

    <!-- this is a tag for any java code -->
    <%
        int i = 2;
        int j = 4;
    %>

    <!-- shortcut to output whatever returns from our method call %> -->
    <h3>result of adding <%= j %> and <%= i %> = <%= add(i, j) %>
    </h3>


    <!-- forloops work as well! -->
    <% for (int index = 0; index < 5; index++) { %>
    <h1> - thing # <%= index %>
    </h1>
    <% } %>

    <!-- here we have to import the Date class.
    You will put the import in the first line of the jsp tag.
    Use the import attribute -->
    <p>The time is: <%= new Date() %>
    </p>

    <h3>YOu asked for some things:</h3>
    <h3><%= request.getQueryString() == null ? "NOTHING" : request.getQueryString()%>
    </h3>

    <%--?wanton=true&soup=please&kneepads=painting--%>

    <!-- getting the value for the name parameter -->
    <% String req = request.getParameter("name"); %>
    <!-- displaying the value -->
    <h1><%= req %>
    </h1>
</div>
POST-Container stuff :-P
</body>
</html>
