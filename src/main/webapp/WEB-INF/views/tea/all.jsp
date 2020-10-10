<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TeaAll</title>
</head>
<body>
<h1>Lista Herbat</h1>
<a href="/tea/add">Dodaj Herbatę</a><br>
<br>
<table border="1">
    <tr>
        <td>Id</td>
        <td>Nazwa</td>
        <td>Kategoria</td>
        <td>Region</td>
        <td>Producent</td>
        <td>Data utworzenia</td>
        <td>Użytkownik</td>
        <td>Szczegóły</td>
    </tr>
    <c:forEach items="${tea}" var = "tea">
        <tr>
            <td>${tea.id}</td>
            <td>${tea.name}</td>
            <td>${tea.category.name}</td>
            <td>${tea.region}</td>
            <td>${tea.producers.name}</td>
            <td>${tea.created}</td>
          <td>${tea.user.userNick}</td>
            <td><a href="/tea/${tea.id}">Zobacz</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
