<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ProducentForm</title>
</head>
<body>
<form:form method="post" modelAttribute="producer">
    <form:hidden path="id"/>
    Nazwa: <form:input path="name" type="text"/>
    <br><br>
    Adres: <form:input path="producerDetails.address" type="text"/>
    <br><br>
    Kraj: <form:input path="producerDetails.country" type="text"/>
    <input type="submit" value="Dodaj Producenta"/>
</form:form>
</body>
</html>
