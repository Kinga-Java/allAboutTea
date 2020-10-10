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
    <title>Opinions</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <c:import url="/WEB-INF/views/components/leftMenu.jsp"/>
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
            <strong>Lista Opinii</strong>
        </div>
        <div class="table-container">
            <table class="table is-bordered is-striped is-narrow is-hoverable is-fullwidth">
                <tr>
                    <td>Id</td>
                    <td>Herbata</td>
                    <td>Ocena</td>
                    <td>Treść opinii</td>
                    <td>Data utworzenia</td>
                    <td>Użytkownik</td>
                    <td>Akcja</td>
                </tr>
                <c:forEach items="${opinion}" var = "opinion">
                    <tr>
                        <td>${opinion.id}</td>
                        <td>${opinion.tea.name}</td>
                        <td>${opinion.rating}</td>
                        <td>${opinion.description}</td>
                        <td>${opinion.created}</td>
                        <td>${opinion.user.userNick}</td>
                        <td>   <a href="/opinion/edit/${opinion.id}"> Edytuj</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <br><br>
        <div class="is-link">
            <a href="/opinion/add">Dodaj Opinię</a>
        </div><br>
        <br>
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
