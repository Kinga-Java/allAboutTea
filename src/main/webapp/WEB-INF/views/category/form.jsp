<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CategoryForm</title>
</head>
<body>
<form:form method="post" modelAttribute="category">
    <form:hidden path="id"/>
    Nazwa: <form:input path="name" type="text"/>
    <br><br>
    <input type="submit" value="Dodaj Kategorię"/>
</form:form>
</body>
</html>
