<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet" />
    <title>Проект "Металл"</title>
</head>
<body class="d-flex flex-column">
<main class="flex-shrink-0">
    <%@ include file="/pages/navbar.jsp"%>
    <section class="py-5">
        <div class="container px-5 my-5">
            <div class="row gx-5 justify-content-center">
                <div class="col-lg-6">
                    <div class="text-center mb-5">
                        <h1 class="fw-bolder">Металл</h1>
                        <p class="lead fw-normal text-muted mb-0">Готовое решение для компаний по продаже металлопроката</p>
                    </div>
                </div>
            </div>
            <div class="row gx-5">
                <div class="col-12"><img class="img-fluid rounded-3 mb-5" src="${pageContext.request.contextPath}/assets/metall/1.jpg" alt="..." /></div>
                <div class="col-lg-6"><img class="img-fluid rounded-3 mb-5" src="${pageContext.request.contextPath}/assets/metall/2.jpg" alt="..." /></div>
                <div class="col-lg-6"><img class="img-fluid rounded-3 mb-5" src="${pageContext.request.contextPath}/assets/metall/3.jpg" alt="..." /></div>
            </div>
            <div class="row gx-5 justify-content-center">
                <div class="col-lg-6">
                    <div class="text-center mb-5">
                        <p class="lead fw-normal text-muted">Структура сайта, разделы каталога, блоки на главной странице,
                            дизайн — все это уже продумано нашей командой. Наполните сайт информацией о компании,
                            продукцией и подключите платежные системы, чтобы запустить проект и настроить бизнес на продажи.</p>
                        <a class="text-decoration-none" href="#!">
                            Посмотреть проект
                            <i class="bi-arrow-right"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
<%@ include file="/pages/footer.jsp"%>
</body>
</html>
