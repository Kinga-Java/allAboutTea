<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Lista kategorii herbat</h1>
<a href="/category/add">Dodaj Kategorię</a><br>
<br>
<table border="1">
    <tr>
        <td>Id</td>
        <td>Nazwa</td>
    </tr>
    <c:forEach items="${category}" var = "category">
        <tr>
            <td>${category.id}</td>
            <td>${category.name}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
