

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
                                        <p class="title">Sanxia Bi Luo Chun</p>
                                        <figure class="image is-4by3">
                                            <img src="/images/tea4.jpg">
                                        </figure>
                                        <p>Bi Luo Chun jest herbatą stosunkowo nową na Tajwanie, bo produkuje się ją na szeroką skalę dopiero od lat 90. Trzeba zaznaczyć, że tajwańska interpretacja Bi Luo Chun znacznie różni się od kontynentalnego pierwowzoru.</p>
                                    </div>
                                </div>
                                <div class="tile is-child box">
                                    <p class="title">Mengding Gan Lu</p>
                                    <figure class="image is-4by3">
                                        <img src="/images/tea6.jpg">
                                    </figure>
                                    <p>„Słodka Rosa”, najsłynniejsza herbata prowincji Syczuan. Tradycyjna, ekskluzywna, autentyczna i pyszna.</p>
                                </div>
                                <div class="tile is-parent">
                                    <div class="tile is-child box">
                                        <p class="title">Gyokuro</p>
                                        <figure class="image is-4by3">
                                            <img src="/images/tea5.jpg">
                                        </figure>
                                        <p>Jakościowo najwyższy gatunek zielonej herbaty japońskiej. Wytwarzana pracochłonną procedurą, czego rezultatem jest niepowtarzalny i bogaty smak!</p>
                                        <p>Gyokuro to herbata charakteryzująca się przede wszystkim intensywnym umami („piąty smak”, częsty w wielu potrawach kuchni azjatyckiej). W posmaku słodka, długo utrzymuje się w ustach. Jest też bogata w aminokwasy i kofeinę. To orzeźwiający i dodający energii napój.</p>
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

