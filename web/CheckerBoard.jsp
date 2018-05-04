<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Phil
  Date: 5/4/18
  Time: 12:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Checkerboard</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css"/>
    <%--<link rel="stylesheet" href="/resources/css/styles.css">--%>


</head>
<body>

<%--make the board array--%>

<%
    int rows = 0;
    int cols = 0;

    if (request.getParameter("rows") != null && request.getParameter("cols") != null) {
        rows = Integer.parseInt(request.getParameter("rows"));
        cols = Integer.parseInt(request.getParameter("cols"));
        System.out.printf("got request for %nrows: %d %ncols: %d%n", rows, cols);
    } else if (request.getParameter("rows") != null && request.getParameter("cols") == null) {
        System.out.println("Only recieved rows...auto-assign cols");
        rows = Integer.parseInt(request.getParameter("rows"));
        cols = rows;
    } else if (request.getParameter("rows") == null && request.getParameter("cols") != null) {
        System.out.println("Only recieved cols...auto-assign rows");
        cols = Integer.parseInt(request.getParameter("cols"));
        rows = cols;
    } else {
        System.out.println("no rows or cols passed in..setting default");
        rows = 10;
        cols = 10;
    }

%>
<%
    //TODO: build the array
//    ArrayList<Integer[]> board = new ArrayList<>();
//    for (int i = 0; i < rows; i++) {
//        board.add(
//            int temp[];
//        for (int j = 0; j < cols; j++) {
//        }
//
//        );
//
//    }

%>
<% for (int currentRow = 0; currentRow < rows; currentRow++) { %>
    <%--<div class="row">--%>
        <%for (int currentCol = 0; currentCol < (cols/2); currentCol++) { %>
    <div class="dark_square">DARK</div>
    <div class="light_square">LIGHT</div>
        <% } %><br/>
    <%--</div>--%>
<% }%>


<%!
    int i = 0;
    int j = 1;

%>


</body>
</html>
