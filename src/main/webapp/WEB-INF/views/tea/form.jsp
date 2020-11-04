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
    <title>CategoryForm</title>
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
            <strong>Dodaj Herbatę</strong>
        </div>

        <div class="container is-fluid">
            <form:form method="post" modelAttribute="tea">
                <form:hidden path="user.id" value="${loggedUser.id}"/>
                <form:hidden path="id"/>
            <div class="field">
                <div class="control">
                    <form:input path="name" type="text" placeholder="nazwa herbaty" class="input is-focused"/><br>
                    <form:errors path="name" cssClass="error"/><br>
                    <br>
                </div>
                <div class="control">
                    <div class="field">
                        <div class="control">
                            <div class="select is-primary">
                                <form:select path="category">
                                    <form:option value="0" label="wybierz kategorię"/>
                                    <form:options items="${category}" itemValue="id" itemLabel="name"/>
                                </form:select>
                                <form:errors path="category" cssClass="error"/>
                                <br>
                                <br><br>
                            </div>
                        </div>
                    </div>
                    <div class="field">
                        <div class="control">
                            <br><br>
                                <form:input path="region" type="text" placeholder="region pochodzenia herbaty"
                                            class="input is-focused"/><br>
                                <form:errors path="region" cssClass="error"/><br>
                            <br>
                            <div class="control">
                                <div class="field">
                                    <div class="control">
                                        <div class="select is-primary">
                                            <br><br>
                                            <form:select path="producers">
                                                <form:option value="0" label="wybierz producenta"/>
                                                <form:options items="${producers}" itemValue="id" itemLabel="name"/>
                                            </form:select>
                                            <form:errors path="producers" cssClass="error"/>
                                            <br>
                                            <br><br>
                                        </div>
                                    </div>
                                </div>
                                <div class="field">
                                    <div class="control">
                                            <form:input path="aroma" type="text" placeholder="aromat herbaty"
                                                        class="input is-focused"/><br>
                                            <form:errors path="aroma" cssClass="error"/><br>
                                        <br><br>
                                        <div class="control">
                                            <div class="field">
                                                <div class="control">
                                                        <form:input path="brewTemperature" type="text"
                                                                    placeholder="temperatura parzenia w stopniach Celsjusza"
                                                                    class="input is-focused"/><br>
                                                        <form:errors path="brewTemperature" cssClass="error"/><br>
                                                    <br><br>
                                                    <div class="control">
                                                        <div class="field">
                                                            <div class="control">
                                                                Ilość Zalań na jedno parzenie
                                                                <form:input path="brewTimes" type="text"
                                                                            placeholder="ilość zalań na jedno parzenie"
                                                                            class="input is-focused"/><br>
                                                                <form:errors path="brewTimes" cssClass="error"/><br>
                                                                <br><br>
                                                                <div class="control">
                                                                    <div class="field">
                                                                        <div class="control">
                                                                            <form:input path="brewTeaWeight" type="text"
                                                                                        placeholder="waga herbaty w gramach na jedno parzenie"
                                                                                        class="input is-focused"/><br>
                                                                            <form:errors path="brewTeaWeight"
                                                                                         cssClass="error"/><br>
                                                                            <br><br>
                                                                            <div class="control">
                                                                                <div class="field">
                                                                                    <div class="control">
                                                                                        <form:input path="brewAmountOfWater" type="text" placeholder="ilość wody na jedno zalanie w ml" class="input is-focused"/><br>
                                                                                        <form:errors path="brewAmountOfWater" cssClass="error"/><br>
                                                                                        <br><br>
                                                                                        <div class="control">
                                                                                            <div class="field">
                                                                                                <div class="control">
                                                                                                    <form:input path="yearOfProduction" type="text" placeholder="rok produkcji" class="input is-focused"/><br>
                                                                                                    <form:errors path="yearOfProduction" cssClass="error"/><br>
                                                                                                    <br><br>
                                                                                                    <div class="control">
                                                                                                        <div class="field">
                                                                                                            <div class="control">
                                                                                                                <form:textarea path="description" class="textarea is-primary" placeholder="Opis herbaty"/>
                                                                                                                <br><form:errors path="description" cssClass="error"/>
                                                                                                            </div>
                                                                                                        </div>

                                                                                <button class="button is-primary">Dodaj
                                                                                    Herbatę
                                                                                </button>
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
                                                                            </div>
</body>
<c:import url="/WEB-INF/views/components/footer.jsp"/>
</html>



