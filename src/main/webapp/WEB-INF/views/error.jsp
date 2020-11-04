<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
</head>
<body>
<section class="section">
    <div class="container has-text-centered">
        <div class="notification is-danger">
            ${errorMessage}
        </div>
        <div class="level-right">
            <div class="level-item">
                <input action="action" class="button is-info" type="button" value="Powrót" onclick="history.go(-1);"/>
            </div>
        </div>
    </div>

</section>
</body>
</html>
