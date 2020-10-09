<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body>
<form:form method="post" modelAttribute="user">
    <form:hidden path="id"/>
    Nick: <form:input path="userNick"/>
    <br> <form:errors path="userNick" cssClass="error"/>
    <br><br>
    Imię: <form:input path="firstName"/>
    <br> <form:errors path="userNick" cssClass="error"/>
    <br><br>
    Nazwisko: <form:input path="lastName"/>
    <br> <form:errors path="userNick" cssClass="error"/>
    <br><br>
    Email: <form:input path="email" type="email"/>
    <br> <form:errors path="email" cssClass="error"/>
    <br><br>
    Hasło: <form:password path="password"/>
    <br> <form:errors path="password" cssClass="error"/>
    <br><br>
    <input type="submit" value="Zarejestruj"/>
    <sec:csrfInput/>
</form:form>
</body>
</html>
