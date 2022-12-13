<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: levietdunghiki
  Date: 13-Dec-22
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>This is list Page</h1>
    <a href="employee/create">Create Employee</a>
    <table>
        <thead>
        <tr>
            <td>Id</td>
            <td>Name</td>
            <td>Email</td>
            <td>Edit</td>
            <td>Delete</td>
            <td>Name Company</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listEmployee}" var="employee">
            <tr>
                <td>${employee.id}</td>
                <td>${employee.name}</td>
                <td>${employee.email}</td>
                <td><a href="<%=request.getContextPath()%>/employee/edit?id=${employee.id}">Edit</a></td>
                <td><a href="<%=request.getContextPath()%>/employee/delete?id=${employee.id}">Delete</a></td>
                <td>${employee.company.name}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</body>
</html>
