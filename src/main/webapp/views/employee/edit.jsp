<%--
  Created by IntelliJ IDEA.
  User: levietdunghiki
  Date: 13-Dec-22
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
 <h1>Employee Edit</h1>
 <form  action="<%=request.getContextPath()%>/employee/edit" method="post">
   <div>
     <span>Id:</span>
     <input type="text" name="id" value="${employee.id}"/>
   </div>
   <div>
     <span>Name:</span>
     <input type="text" name="name" value="${employee.name}"/>
   </div>
   <div>
     <span>Email:</span>
     <input type="text" name="email" value="${employee.email}"/>
   </div>
   <input type="submit" value="Update"/>

 </form>
</body>
</html>
