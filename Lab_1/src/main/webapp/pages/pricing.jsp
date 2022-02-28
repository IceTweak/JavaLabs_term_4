
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet" />
    <title>Подписка</title>
</head>
<body class="d-flex flex-column">
<main class="flex-shrink-0">
    <%@ include file="/pages/navbar.jsp"%>
<section class="bg-light py-5">
    <div class="container px-5 my-5">
        <div class="text-center mb-5">
            <h1 class="fw-bolder">Платите по мере роста</h1>
            <p class="lead fw-normal text-muted mb-0">Представляем наши безкомпромиссные тарифы</p>
        </div>
        <div class="row gx-5 justify-content-center">
            <!-- Pricing card free-->
            <div class="col-lg-6 col-xl-4">
                <div class="card mb-5 mb-xl-0">
                    <div class="card-body p-5">
                        <div class="small text-uppercase fw-bold text-muted">Free</div>
                        <div class="mb-3">
                            <span class="display-4 fw-bold">₽0</span>
                            <span class="text-muted">/ мес.</span>
                        </div>
                        <ul class="list-unstyled mb-4">
                            <li class="mb-2">
                                <i class="bi bi-check text-primary"></i>
                                <strong>1 пользователь</strong>
                            </li>
                            <li class="mb-2">
                                <i class="bi bi-check text-primary"></i>
                                5GB пространства
                            </li>
                            <li class="mb-2">
                                <i class="bi bi-check text-primary"></i>
                                Создание публичных страниц
                            </li>
                            <li class="mb-2">
                                <i class="bi bi-check text-primary"></i>
                                Дизайн сообщество
                            </li>
                            <li class="mb-2 text-muted">
                                <i class="bi bi-x"></i>
                                Закрытые продукты
                            </li>
                            <li class="mb-2 text-muted">
                                <i class="bi bi-x"></i>
                                Персоональная помощь
                            </li>
                            <li class="mb-2 text-muted">
                                <i class="bi bi-x"></i>
                                Бесплатный домен
                            </li>
                            <li class="text-muted">
                                <i class="bi bi-x"></i>
                                Ежемесячные отчеты
                            </li>
                        </ul>
                        <div class="d-grid"><a class="btn btn-outline-primary" href="#!">Подписаться</a></div>
                    </div>
                </div>
            </div>
            <!-- Pricing card pro-->
            <div class="col-lg-6 col-xl-4">
                <div class="card mb-5 mb-xl-0">
                    <div class="card-body p-5">
                        <div class="small text-uppercase fw-bold">
                            <i class="bi bi-star-fill text-warning"></i>
                            Pro
                        </div>
                        <div class="mb-3">
                            <span class="display-4 fw-bold">₽699</span>
                            <span class="text-muted">/ мес.</span>
                        </div>
                        <ul class="list-unstyled mb-4">
                            <li class="mb-2">
                                <i class="bi bi-check text-primary"></i>
                                <strong>5 пользователей</strong>
                            </li>
                            <li class="mb-2">
                                <i class="bi bi-check text-primary"></i>
                                10GB пространства
                            </li>
                            <li class="mb-2">
                                <i class="bi bi-check text-primary"></i>
                                Создание публичных страниц
                            </li>
                            <li class="mb-2">
                                <i class="bi bi-check text-primary"></i>
                                Дизайн сообщество
                            </li>
                            <li class="mb-2">
                                <i class="bi bi-check text-primary"></i>
                                Закрытые продукты
                            </li>
                            <li class="mb-2">
                                <i class="bi bi-check text-primary"></i>
                                Персоональная помощь
                            </li>
                            <li class="mb-2">
                                <i class="bi bi-check text-primary"></i>
                                Бесплатный домен
                            </li>
                            <li class="text-muted">
                                <i class="bi bi-x"></i>
                                Ежемесячные отчеты
                            </li>
                        </ul>
                        <div class="d-grid"><a class="btn btn-primary" href="#!">Подписаться</a></div>
                    </div>
                </div>
            </div>
            <!-- Pricing card enterprise-->
            <div class="col-lg-6 col-xl-4">
                <div class="card">
                    <div class="card-body p-5">
                        <div class="small text-uppercase fw-bold text-muted">Enterprise</div>
                        <div class="mb-3">
                            <span class="display-4 fw-bold">₽3499</span>
                            <span class="text-muted">/ мес.</span>
                        </div>
                        <ul class="list-unstyled mb-4">
                            <li class="mb-2">
                                <i class="bi bi-check text-primary"></i>
                                <strong>Нет ограничений пользователей</strong>
                            </li>
                            <li class="mb-2">
                                <i class="bi bi-check text-primary"></i>
                                200GB пространства
                            </li>
                            <li class="mb-2">
                                <i class="bi bi-check text-primary"></i>
                                Создание публичных страниц
                            </li>
                            <li class="mb-2">
                                <i class="bi bi-check text-primary"></i>
                                Дизайн сообщество
                            </li>
                            <li class="mb-2">
                                <i class="bi bi-check text-primary"></i>
                                Закрытые продукты
                            </li>
                            <li class="mb-2">
                                <i class="bi bi-check text-primary"></i>
                                Персоональная помощь
                            </li>
                            <li class="mb-2">
                                <i class="bi bi-check text-primary"></i>
                                <strong>Неограниченное</strong>
                                число доменов
                            </li>
                            <li class="text-muted">
                                <i class="bi bi-check text-primary"></i>
                                Ежемесячные отчеты
                            </li>
                        </ul>
                        <div class="d-grid"><a class="btn btn-outline-primary" href="#!">Подписаться</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</main>
<%@ include file="/pages/footer.jsp"%>
</body>
</html>
