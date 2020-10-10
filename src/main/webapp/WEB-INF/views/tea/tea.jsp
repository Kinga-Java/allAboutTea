<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tea</title>
</head>
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




</body>
</html>
