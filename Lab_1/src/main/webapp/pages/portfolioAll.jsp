<%--
  Created by IntelliJ IDEA.
  User: Roman
  Date: 22.02.2022
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet" />
    <title>Проекты</title>
</head>
<body class="d-flex flex-column">
<main class="flex-shrink-0">
    <%@ include file="/pages/navbar.jsp"%>
    <section class="py-5">
        <div class="container px-5 my-5">
            <div class="text-center mb-5">
                <h1 class="fw-bolder">Наши работы</h1>
                <p class="lead fw-normal text-muted mb-0">Портфолио компании</p>
            </div>
            <div class="row gx-5">
                <div class="col-lg-6">
                    <div class="position-relative mb-5">
                        <img class="img-fluid rounded-3 mb-3" src="${pageContext.request.contextPath}/assets/portfolio-overview/project-1.jpg" alt="..." />
                        <a class="h3 fw-bolder text-decoration-none link-dark stretched-link" href="#!">Beauty Target</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="position-relative mb-5">
                        <img class="img-fluid rounded-3 mb-3" src="${pageContext.request.contextPath}/assets/portfolio-overview/project-2.jpg" alt="..." />
                        <a class="h3 fw-bolder text-decoration-none link-dark stretched-link" href="#!">Food House</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="position-relative mb-5 mb-lg-0">
                        <img class="img-fluid rounded-3 mb-3" src="${pageContext.request.contextPath}/assets/portfolio-overview/project-3.jpg" alt="..." />
                        <a class="h3 fw-bolder text-decoration-none link-dark stretched-link" href="#!">Иннова Course</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="position-relative">
                        <img class="img-fluid rounded-3 mb-3" src="${pageContext.request.contextPath}/assets/portfolio-overview/project-4.jpg" alt="..." />
                        <a class="h3 fw-bolder text-decoration-none link-dark stretched-link" href="#!">Volga Ремонт</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="py-5 bg-light">
        <div class="container px-5 my-5">
            <h2 class="display-4 fw-bolder mb-4">Начните создавать вместе с нами!</h2>
            <a class="btn btn-lg btn-primary" href="#!">Заказать страницу</a>
        </div>
    </section>
</main>
<%@ include file="/pages/footer.jsp"%>
</body>
</html>
