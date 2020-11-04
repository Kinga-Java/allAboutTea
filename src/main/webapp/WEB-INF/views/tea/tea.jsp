<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Homepage</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.2/css/bulma.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
    <c:import url="/WEB-INF/views/components/leftMenu.jsp"/>

</head>
<body>
<meta charset="utf-8">
<div class="hero-body">
</div>
<div id="here" class="columns">
    <div class="column is-narrow">
        <c:import url="/WEB-INF/views/components/menuUser.jsp"/>
    </div>
    <div class="column">

        <div class="tile is-ancestor">
            <div class="tile is-4 is-vertical is-parent">
                <div class="tile is-child box">
                    <p class="title">Herbata ${tea.name}</p>


                    <table class="table is-bordered is-striped is-narrow is-hoverable is-fullwidth">
                        <tr>
                            <td>Kategoria</td>
                            <td>${tea.category.name}</td>
                        </tr>
                            <tr>
                              <td>Region pochodzenia</td>
                                <td>${tea.region}</td>
                            </tr>
                        <tr>
                            <td>Producent</td>
                            <td>${tea.producers.name}</td>
                        </tr>
                        <tr>
                            <td>Rok produkcji</td>
                            <td>${tea.yearOfProduction}</td>
                        </tr>
                        <tr>
                            <td>Aromat</td>
                            <td>${tea.aroma}</td>
                        </tr>
                        <tr>
                            <td>Ilość zalań na jedno parzenie</td>
                            <td>${tea.brewTimes}</td>
                        </tr>
                        <tr>
                            <td>Temperatura parzenia</td>
                            <td>${tea.brewTemperature} stopni Celsjusza</td>
                        </tr>
                        <tr>
                            <td>Waga herbaty na jedno parzenie</td>
                            <td>${tea.brewTeaWeight} g</td>
                        </tr>
                        <tr>
                            <td>Ilość wody na jedno parzenie</td>
                            <td>${tea.brewAmountOfWater} ml</td>
                        </tr>
                        <tr>
                            <td>Opis herbaty</td>
                            <td>${tea.description}</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="tile is-child box">
                <p class="title">Zdjęcie</p>
                <table class="table">
                    <br><br>
                    <c:forEach items="${tea.files}" var="file">
                        <p>
                            <img title="${file.originalFileName}" src="/files/${file.id}" width="400" height="450"/>
                        </p>
                    </c:forEach>
                </table>
                <br><br>
                <div class="level-left">
                    <div class="level-item">
                        <form method="post" enctype="multipart/form-data" action="/files/upload">
                            <label>Dodaj plik:
                                <input type="file" name="file"
                                       accept="application/pdf,image/*"/>
                            </label>
                            <button name="idTea" value="${tea.id}" type="submit" class="button is-success">Dodaj
                            </button>
                            <sec:csrfInput/>
                        </form>
                    </div>
                </div>
                <br>
                <div class="level-left">
                    <div class="level-item">
                        <c:if test="${emptyFile != null}">
                            ${emptyFile}
                        </c:if>

                        <c:if test="${emptyList != null}">
                            ${emptyList}
                        </c:if>
                        <c:if test="${emptyList == null}">

                        </c:if>
                    </div>
                </div>
                <br>
            </div>
            <div class="tile is-parent">
                <div class="tile is-child box">
                    <p class="title">Opinie użytkowników</p>
                    <article>
                        <div class="table-container">
                            <br>
                            <article>
                                <p> Średnia ocena ${tea.averageNote}</p>
                            </article>
                            <br><br>
                            <table class="table is-bordered is-striped is-narrow is-hoverable is-fullwidth">
                                <tr>
                                    <td>Ocena</td>
                                    <td>Data utworzenia</td>
                                    <td>Opis</td>
                                </tr>
                                <c:forEach items="${tea.opinion}" var = "opinion">
                                    <tr>
                                        <td>${opinion.rating}</td>
                                        <td>${opinion.created}</td>
                                        <td>${opinion.description}</td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </div>
                    </article>
                </div>
            </div>
        </div>
        <div class="hero-body">

        </div>
    </div>
</div>


</body>
<c:import url="/WEB-INF/views/components/footer.jsp"/>
</html>






<%--


<body>
<article>
   <p> Herbata ${tea.name}</p>
</article>
<article>
    <p> Kategoria herbaty ${tea.category.name}</p>
</article>
<article>
    <p> Region pochodzenia ${tea.region}</p>
</article>
<article>
    <p> Producent ${tea.producers.name}</p>
</article>
<article>
    <p> Rok produkcji ${tea.yearOfProduction}</p>
</article>
<article>
    <p> Aromat herbaty ${tea.aroma}</p>
</article>
<article>
    <p> Ilość zalań na jedno parzenie ${tea.brewTimes}</p>
</article>
<article>
    <p> Temperatura parzenia ${tea.brewTemperature} stopni Celsjusza</p>
</article>
<article>
    <p> Waga herbaty na jedno parzenie ${tea.brewTeaWeight} g</p>
</article>
<article>
    <p> Ilość wody na jedno parzenie ${tea.brewAmountOfWater} ml</p>
</article>
<article>
    <p> Opis herbaty ${tea.description} ml</p>
</article>
<article>
    <p> Opinie na temat herbaty</p>
    <table border="1">
        <tr>
            <td>Ocena</td>
            <td>Opis</td>
            <td>Data utworzenia</td>
        </tr>
        <c:forEach items="${tea.opinion}" var = "opinion">
            <tr>
                <td>${opinion.rating}</td>
                <td>${opinion.description}</td>
                <td>${opinion.created}</td>
            </tr>
        </c:forEach>
    </table>
    <article>
        <p> Średnia opinia ${tea.averageNote}</p>
    </article>
</article>



<div class="level-left">
    <div class="level-item">
        <form method="post" enctype="multipart/form-data" action="/files/upload">
            <label>Dodaj plik:
                <input type="file" name="file"
                       accept="application/pdf,image/*"/>
            </label>
            <button name="idTea" value="${tea.id}" type="submit" class="button is-success">Dodaj
            </button>
            <sec:csrfInput/>
        </form>
    </div>
</div>
<br>
<div class="level-left">
    <div class="level-item">
        <c:if test="${emptyFile != null}">
            ${emptyFile}
        </c:if>

        <c:if test="${emptyList != null}">
            ${emptyList}
        </c:if>
        <c:if test="${emptyList == null}">
            <table class="table">
             <br><br>
                <c:forEach items="${tea.files}" var="file">
                    <p>
                        <img title="${file.originalFileName}" src="/files/${file.id}" width="250" height="250"/>
                    </p>
                </c:forEach>
            </table>

        </c:if>
    </div>
</div>
<br>

--%>

