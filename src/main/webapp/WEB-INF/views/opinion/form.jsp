<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>OpinionForm</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <c:import url="/WEB-INF/views/components/leftMenu.jsp"/>
    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body>

<div class="hero-body">
</div>
<div id="here" class="columns">
    <div class="column is-narrow">
        <c:import url="/WEB-INF/views/components/menuUser.jsp"/>
    </div>
    <div class="column is-three-fifths">

        <div class="notification has-text-centered is-light">
            <strong>Dodaj opinię</strong>
        </div>

        <div class="container is-fluid">
            <form:form method="post" modelAttribute="opinion">
                <form:hidden path="user.id" value="${loggedUser.id}"/>
            <form:hidden path="id"/>

                <div class="field">
                    <div class="control">
                        <div class="select is-primary">
                            <form:select path="tea">
                                <form:option value="0" label="wybierz herbatę"/>
                                <form:options items="${tea}" itemValue="id" itemLabel="name"/>
                            </form:select><br>
                            <form:errors path="tea" cssClass="error"/><br>
                            <br><br>
                        </div>
                    </div>
                </div>
<br><br>

            <div class="field">
                <div class="control">
                    <form:input path="rating" type="text" placeholder="wpisz ocenę cherbaty, podaj wartość od 1 do 10" class="input is-focused"/><br>
                    <form:errors path="rating" cssClass="error"/><br>
                    <br>

                    <form:textarea path="description" class="textarea is-primary" placeholder="Opis herbaty"/>
                    <br><form:errors path="description" cssClass="error"/><br>

                    <div class="control">
                        <button class="button is-primary">Dodaj Opinię</button>
                    </div>
                    </form:form>
                </div>
            </div>
            <div>
            </div>
        </div>
    </div>
</div>
<br>
<br>
<br>
<a class="images">
    <img src="/images/back2.png">
</a>

</body>
<c:import url="/WEB-INF/views/components/footer.jsp"/>
</html>








<%--
<div class="container is-fluid">
    <form:form method="post" modelAttribute="opinion">
        <form:hidden path="user.id" value="${loggedUser.id}"/>
        <form:hidden path="id"/>--%>

<%--
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
</form:form>--%>
