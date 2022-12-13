<%--
  Created by IntelliJ IDEA.
  User: levietdunghiki
  Date: 13-Dec-22
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee Manager</title>
</head>
<body>
  <h1>Create Employee</h1>
  <form action="<%=request.getContextPath()%>/employee/create" method="post">
    <div>
      <span>Name:</span>
      <input type="text" name="name"/>
    </div>
    <div>
      <span>Email:</span>
      <input type="text" name="email"/>
    </div>
    <input type="submit" value="create"/>
  </form>
</body>
</html>
