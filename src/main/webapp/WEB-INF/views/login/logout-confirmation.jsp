<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Logout</title>
</head>
<body>
<section class="section">
    <div class="container is-fluid">
        <div class="notification">
            <h5 class="title is-5 has-text-centered">Potwierdź wylogowanie</h5>
            <form method="post" action="/logout">
                <div class="field is-grouped is-grouped-centered">
                    <p class="control">
                    <div class="buttons">
                        <button class="button is-success" type="submit">
                            <strong>Potwierdź</strong>
                        </button>
                        <a class="button is-light" href="/home">
                            Anuluj
                        </a>
                    </div>
                    </p>
                </div>
                <sec:csrfInput/>
            </form>
        </div>
    </div>
</section>
</body>
</html>
