<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</article>
</body>
</html>
