<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<nav class="navbar" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
        <a class="images">
            <img src="/images/tea2.png" width="200" height="170">
        </a>

        <a role="button" class="navbar-burger burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
        </a>
    </div>

    <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-start">
            <a class="navbar-item" href="/tea/all">
                Herbaty
            </a>

            <a class="navbar-item" href="/category/all">
                Kategorie
            </a>

            <a class="navbar-item" href="/producer/all">
                Producenci
            </a>
            <a class="navbar-item" href="/opinion/all/all">
                Opinie
            </a>

            <div class="navbar-item has-dropdown is-hoverable">
                <a class="navbar-link">
                    Więcej
                </a>

                <div class="navbar-dropdown">
                    <a class="navbar-item">
                        O nas
                    </a>
                    <hr class="navbar-divider">
                    <a class="navbar-item">
                        Kontakt
                    </a>
                </div>
            </div>
        </div>

        <div class="navbar-end">
            <div class="navbar-item">
                <div class="buttons">
                    <a class="button is-primary is-info" href="/user/add">
                        <strong>Zarejestruj się</strong>
                    </a>
                    <a class="button is-light" href="/login">
                        Zaloguj się
                    </a>
                    <a class="button is-light" href="/logout-confirm">
                        Wyloguj się
                    </a>
                </div>
            </div>
        </div>
    </div>
</nav>
