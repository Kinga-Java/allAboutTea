<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${files}" var="file">
    <p>
        <img title="${file.originalFileName}" src="/files/${file.id}" alt="teat" width="250" height="160"/>
    </p>
</c:forEach>
</body>
</html>
