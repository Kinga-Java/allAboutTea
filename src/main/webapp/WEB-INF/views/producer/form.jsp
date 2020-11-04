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
    <title>ProducerForm</title>
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
            <strong>Dodaj producenta</strong>
        </div>

        <div class="container is-fluid">
            <form:form method="post" modelAttribute="producer">
            <form:hidden path="id"/>
            <div class="field">
                <div class="control">
                    <form:input path="name" type="text" placeholder="nazwa producenta" class="input is-focused"/><br>
                    <form:errors path="name" cssClass="error"/><br>
                    <br><br>
                    <div class="control">
                        <div class="field">
                            <div class="control">
                                <form:input path="producerDetails.address" type="text" placeholder="adres producenta" class="input is-focused"/><br>
                                <form:errors path="producerDetails.address" cssClass="error"/><br>
                                <br><br>
                                <div class="control">
                                    <div class="field">
                                    <div class="control">
                                        <form:input path="producerDetails.country" type="text" placeholder="kraj producenta" class="input is-focused"/><br>
                                        <form:errors path="producerDetails.country" cssClass="error"/><br>
                                        <br><br>
                                        <div class="control">
                                            <br><br><br>
                        <button class="button is-primary">Dodaj Producenta</button>
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
</html
