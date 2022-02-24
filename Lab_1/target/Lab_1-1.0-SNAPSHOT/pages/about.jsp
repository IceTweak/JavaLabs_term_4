<%--
  Created by IntelliJ IDEA.
  User: Roman
  Date: 22.02.2022
  Time: 15:54
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
    <title>О нас</title>
</head>
<body class="d-flex flex-column">
    <main class="flex-shrink-0">
        <%@ include file="/pages/navbar.jsp"%>
        <header class="py-5">
            <div class="container px-5">
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-xxl-6">
                        <div class="text-center my-5">
                            <h1 class="fw-bolder mb-3">Создание функциональных, удобных и эффективных продуктов</h1>
                            <p class="lead fw-normal text-muted mb-4">Это определяет основные направления <br>работы нашей команды</p>
                            <a class="btn btn-primary btn-lg" href="#scroll-target">Узнайте больше</a>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- About section one-->
        <section class="py-5 bg-light" id="scroll-target">
            <div class="container px-5 my-5">
                <div class="row gx-5 align-items-center">
                    <div class="col-lg-6"><img class="img-fluid rounded mb-5 mb-lg-0" src="${pageContext.request.contextPath}/assets/about/google.jpg" alt="..." /></div>
                    <div class="col-lg-6">
                        <h2 class="fw-bolder">Основание компании</h2>
                        <p class="lead fw-normal text-muted mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            Iusto est, ut esse a labore aliquam beatae expedita. Blanditiis impedit numquam libero
                            molestiae et fugit cupiditate, quibusdam expedita, maiores eaque quisquam.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- About section two-->
        <section class="py-5">
            <div class="container px-5 my-5">
                <div class="row gx-5 align-items-center">
                    <div class="col-lg-6 order-first order-lg-last"><img class="img-fluid rounded mb-5 mb-lg-0" src="${pageContext.request.contextPath}/assets/about/chart-growth.jpg" alt="..." /></div>
                    <div class="col-lg-6">
                        <h2 class="fw-bolder">Рост & развитие</h2>
                        <p class="lead fw-normal text-muted mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            Iusto est, ut esse a labore aliquam beatae expedita. Blanditiis impedit numquam libero
                            molestiae et fugit cupiditate, quibusdam expedita, maiores eaque quisquam.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Team members section-->
        <section class="py-5 bg-light">
            <div class="container px-5 my-5">
                <div class="text-center">
                    <h2 class="fw-bolder">Наша Команда</h2>
                    <p class="lead fw-normal text-muted mb-5">За ними качество и ваш успех!</p>
                </div>
                <div class="row gx-5 row-cols-1 row-cols-sm-2 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5 mb-5 mb-xl-0">
                        <div class="text-center">
                            <img class="img-fluid rounded-circle mb-4 px-4" src="${pageContext.request.contextPath}/assets/about/coder-cat.jpg" alt="..." />
                            <h5 class="fw-bolder">Вася</h5>
                            <div class="fst-italic text-muted">Главный разработчик</div>
                        </div>
                    </div>
                    <div class="col mb-5 mb-5 mb-xl-0">
                        <div class="text-center">
                            <img class="img-fluid rounded-circle mb-4 px-4" src="${pageContext.request.contextPath}/assets/about/designer-cat.jpg" alt="..." />
                            <h5 class="fw-bolder">Буся</h5>
                            <div class="fst-italic text-muted">UX/UI дизайнер</div>
                        </div>
                    </div>
                    <div class="col mb-5 mb-5 mb-sm-0">
                        <div class="text-center">
                            <img class="img-fluid rounded-circle mb-4 px-4" src="${pageContext.request.contextPath}/assets/about/pm2-cat.jpg" alt="..." />
                            <h5 class="fw-bolder">Барсик</h5>
                            <div class="fst-italic text-muted">Project Manager</div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="text-center">
                            <img class="img-fluid rounded-circle mb-4 px-4" src="${pageContext.request.contextPath}/assets/about/boss-cat.jpg" alt="..." />
                            <h5 class="fw-bolder">Гарфилд</h5>
                            <div class="fst-italic text-muted">Директор</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <%@ include file="/pages/footer.jsp"%>
</body>
</html>
