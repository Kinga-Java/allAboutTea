<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ProducerAll</title>
</head>
<body>
<h1>Lista Producentów</h1>
<a href="/producer/add">Dodaj Producenta</a><br>
<br>
<table border="1">
    <tr>
        <td>Id</td>
        <td>Nazwa</td>
        <td>Adres</td>
        <td>Kraj</td>
        <td>Akcja</td>
    </tr>
    <c:forEach items="${producersAll}" var ="producer">
        <tr>
            <td>${producer.id}</td>
            <td>${producer.name}</td>
            <td>${producer.producerDetails.address}</td>
            <td>${producer.producerDetails.country}</td>
             <td>   <a href="/producer/edit/${producer.id}"> Edytuj</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
