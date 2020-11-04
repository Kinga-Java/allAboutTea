<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LoginPage</title>
</head>
<body>

<body>
<div class="container">
</div>
<c:if test="${param['error'] != null}">
    <div class="window">
        <div class="notification is-danger">
            <button class="delete"></button>
            Dane logowania są błądne.
        </div>
    </div>
</c:if>

<section class="center" id="loginForm">

    <form method="post" action="/login">
        <div class="field">
            <p class="control has-icons-left has-icons-right">
                <input class="input" type="email" placeholder="Podaj email" name="username">
                <span class="icon is-small is-left">
                        <i class="fas fa-envelope"></i>
                    </span>
                <span class="icon is-small is-right">
                        <i class="fas fa-check"></i>
                    </span>
            </p>
        </div>
        <div class="field">
            <p class="control has-icons-left">
                <input class="input" type="password" placeholder="Podaj hasło" name="password">
                <span class="icon is-small is-left">
                        <i class="fas fa-lock"></i>
                    </span>
            </p>
        </div>
        <div class="field">
            <p class="control">
                <button class="button is-success">
                    Login
                </button>
            </p>
        </div>
        <%--        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
        <sec:csrfInput/>
    </form>
    <br>
    <div class="is-link">
        <a href="/register">Zarejestruj się!</a>
    </div>
</section>
</form>
</body>
</html>
