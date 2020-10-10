<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Opinion</title>
    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body>
<form:form method="post" modelAttribute="opinion">
    <form:hidden path="user.id" value="${loggedUser.id}"/>
    <form:hidden path="id"/>
    Jakiej herbaty dotyczy opinia: <form:select path="tea">
    <form:option value="0" label="wybierz herbatę"/>
    <form:options items="${tea}" itemValue="id" itemLabel="name"/>
</form:select><br>
    <form:errors path="tea" cssClass="error"/><br>
    <br><br>
    Ocena (od 1 do 10): <form:input path="rating" type="text"/>
    <br><form:errors path="rating" cssClass="error"/>
    <br><br>
    Treść opinii:<br>
    <form:textarea path="description" rows="5" cols="20"/>
    <br><form:errors path="description" cssClass="error"/>
    <br><br>
    <input type="submit" value="Dodaj Opinię"/>
</form:form>
</body>
</html>
