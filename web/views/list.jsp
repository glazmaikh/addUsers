<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: sergey
  Date: 20.05.2021
  Time: 12:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users list</title>
</head>

<body>
<div>
    <h1>web-project</h1>
</div>

<div>
    <div>
        <div>
            <h2>Users</h2>
        </div>
        <%
            List<String> names = (List<String>) request.getAttribute("userNames");

            if (names != null && !names.isEmpty()){
                out.println("<ui>");
                for (String s : names){
                    out.println("<li>" + s + "</li>");
                }
                out.println("<ui>");
            } else out.println("<div<h5>There are no users yet!</h5></div>");
        %>
    </div>
</div>

<div>
    <button onclick="location.href='/'">Back to main</button>
</div>
</body>
</html>
