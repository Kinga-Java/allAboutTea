<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Lista Opinii</h1>
<a href="/opinion/add">Dodaj Opinię</a><br>
<br>
<table border="1">
    <tr>
        <td>Id</td>
        <td>Herbata</td>
        <td>Ocena</td>
        <td>Treść opinii</td>
        <td>Data utworzenia</td>
    </tr>
    <c:forEach items="${opinion}" var = "opinion">
        <tr>
            <td>${opinion.id}</td>
            <td>${opinion.tea.name}</td>
            <td>${opinion.rating}</td>
            <td>${opinion.description}</td>
            <td>${opinion.created}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
