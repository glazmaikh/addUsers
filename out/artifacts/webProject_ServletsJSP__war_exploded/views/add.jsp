<%--
  Created by IntelliJ IDEA.
  User: sergey
  Date: 20.05.2021
  Time: 12:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new user</title>
</head>
<body>
    <div>
        <h1>web-project</h1>
    </div>

    <div>
        <%
            if (request.getAttribute("userName") != null){
                out.println("<p>User '" + request.getAttribute("userName") + "' added!</p>");
            }
        %>
        <div>
            <div>
                <h2>Add user</h2>
            </div>
            <form method="post" class="w3-selection w3-light-grey w3-padding">
                <label>Name:
                    <input type="text" name="name"><br />
                </label>
                <label>Password:
                    <input type="password" name="pass"><br />
                </label>
                <button type="submit">Submit</button>
            </form>
        </div>
    </div>

    <div>
        <button onclick="location.href='/'">Back to main</button>
    </div>
</body>
</html>
