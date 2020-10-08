<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TeaForm</title>
    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body>
<form:form method="post" modelAttribute="tea">
    <form:hidden path="id"/>

    Nazwa: <form:input path="name" type="text"/>
    <br> <form:errors path="name" cssClass="error"/>
    <br><br>
    Kategoria:<form:select path="category">
    <form:option value="0" label="wybierz kategorię"/>
    <form:options items="${category}" itemValue="id" itemLabel="name"/>
    </form:select>
    <form:errors path="category" cssClass="error"/>
    <br>
    <br><br>
    Region Pochodzenia: <form:input path="region" type="text"/>
    <br> <form:errors path="region" cssClass="error"/>
    <br><br>
<%--    Użytkownik: <form:select path="user.id" items="${users}" itemLabel="userName" itemValue="id"/>
    <br> <form:errors path="user" cssClass="error"/>
    <br><br>--%>
    Producent:<form:select path="producers">
    <form:option value="0" label="wybierz producenta"/>
    <form:options items="${producers}" itemValue="id" itemLabel ="name"/>
    </form:select>
    <form:errors path="producers" cssClass="error"/>
    <br>
    <br><br>
    Aromat: <form:input path="aroma" type="text"/>
    <br> <form:errors path="aroma" cssClass="error"/>
    <br><br>
    Temperatura: <form:input path="brewTemperature" type="text"/>
    <br> <form:errors path="brewTemperature" cssClass="error"/>
    <br><br>
    Ilość parzeń: <form:input path="brewTimes" type="text"/>
    <br> <form:errors path="brewTimes" cssClass="error"/>
    <br><br>
    Waga: <form:input path="brewTeaWeight" type="text"/>
    <br> <form:errors path="brewTeaWeight" cssClass="error"/>
    <br><br>
    Ilość wody: <form:input path="brewAmountOfWater" type="text"/>
    <br> <form:errors path="brewAmountOfWater" cssClass="error"/>
    <br><br>
    Rok produkcji: <form:input path="yearOfProduction" type="tex"/>
    <br><br>
    Opis:<form:textarea path="description" rows="5" cols="20"/>
    <br><form:errors path="description" cssClass="error"/>
    <br><br>
    <input type="submit" value="Dodaj Herbatę"/>
</form:form>
</body>
</html>
