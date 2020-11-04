<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>${producer.name}</h1>
<br>
<table border="1">
    <tr>
        <td>Nazwa</td>
        <td>Adres</td>
        <td>Kraj</td>
        <td>Akcja</td>
    </tr>
    <c:forEach items="${producer}" var ="producer">
        <tr>
            <td>${producer.name}</td>
            <td>${producer.producerDetails.address}</td>
            <td>${producer.producerDetails.country}</td>
           <td> <a href="/producer/edit/${producer.id}"> Edytuj</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
