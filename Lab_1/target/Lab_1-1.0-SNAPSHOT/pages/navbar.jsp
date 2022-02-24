<%--
  Created by IntelliJ IDEA.
  User: Roman
  Date: 22.02.2022
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container px-5">
        <a class="navbar-brand" href="pages?action=home"><h3><u>Ve</u>rstkovo</h3></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link" href="pages?action=home">Главная</a></li>
                <li class="nav-item"><a class="nav-link" href="pages?action=about">О нас</a></li>
                <li class="nav-item"><a class="nav-link" href="pages?action=contact">Контакты</a></li>
                <li class="nav-item"><a class="nav-link" href="pages?action=pricing">Подписка</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Портфолио</a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="pages?action=portfolioAll">Проекты</a></li>
                        <li><a class="dropdown-item" href="pages?action=portfolioItem">Сайт АО Металл</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
