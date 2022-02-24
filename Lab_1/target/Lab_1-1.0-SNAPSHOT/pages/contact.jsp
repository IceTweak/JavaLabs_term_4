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
    <title>Контакты</title>
</head>
<body class="d-flex flex-column">
<main class="flex-shrink-0">
    <%@ include file="/pages/navbar.jsp"%>
    <!-- Page content-->
    <section class="py-5">
        <div class="container px-5">
            <!-- Contact form-->
            <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                <div class="text-center mb-5">
                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-envelope"></i></div>
                    <h1 class="fw-bolder">Будьте на связи!</h1>
                    <p class="lead fw-normal text-muted mb-0">Мы всегда рады получить отзыв или помочь</p>
                </div>
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-8 col-xl-6">
                        <form id="contactForm" data-sb-form-api-token="API_TOKEN">
                            <!-- Name input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="name" type="text" placeholder="Enter your name..." data-sb-validations="required" />
                                <label for="name">Ваше имя</label>
                                <div class="invalid-feedback" data-sb-feedback="name:required">Введите имя - это обязательно</div>
                            </div>
                            <!-- Email address input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="email" type="email" placeholder="name@example.com" data-sb-validations="required,email" />
                                <label for="email">Ваш E-mail</label>
                                <div class="invalid-feedback" data-sb-feedback="email:required">Это обязательное поле</div>
                                <div class="invalid-feedback" data-sb-feedback="email:email">Неверный E-mail</div>
                            </div>
                            <!-- Phone number input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="phone" type="tel" placeholder="(123) 456-7890" data-sb-validations="required" />
                                <label for="phone">Телефон</label>
                                <div class="invalid-feedback" data-sb-feedback="phone:required">Это обязательное поле</div>
                            </div>
                            <!-- Message input-->
                            <div class="form-floating mb-3">
                                <textarea class="form-control" id="message" type="text" placeholder="Enter your message here..." style="height: 10rem"></textarea>
                                <label for="message">Сообщение</label>
                            </div>
                            <!-- Submit success message-->
                            <!---->
                            <!-- This is what your users will see when the form-->
                            <!-- has successfully submitted-->
                            <div class="d-none" id="submitSuccessMessage">
                                <div class="text-center mb-3">
                                    <div class="fw-bolder">Form submission successful!</div>
                                </div>
                            </div>
                            <!-- Submit error message-->
                            <!---->
                            <!-- This is what your users will see when there is-->
                            <!-- an error submitting the form-->
                            <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>
                            <!-- Submit Button-->
                            <div class="d-grid"><button class="btn btn-primary btn-lg" id="submitButton" type="submit">Отправить</button></div>
                        </form>
                    </div>
                </div>
            </div>


            <div class="row gx-5 row-cols-2 row-cols-lg-4 py-5">
                <div class="col">
                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-telegram"></i></div>
                    <div class="h5 mb-2">Telegram-канал</div>
                    <p class="text-muted mb-0">Здесь вы можете найти множество интересной информации</p>
                </div>
                <div class="col">
                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-discord"></i></div>
                    <div class="h5">Discord коммьюнити</div>
                    <p class="text-muted mb-0">Общайтесь с разработчиками, дизайнерами, единомышленниками.</p>
                </div>
                <div class="col">
                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-emoji-smile-fill"></i></div>
                    <div class="h5">Обратная связь</div>
                    <p class="text-muted mb-0">Отправим вам E-mail или свяжемся по телефону</p>
                </div>
                <div class="col">
                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-telephone"></i></div>
                    <div class="h5">Звонок</div>
                    <p class="text-muted mb-0">Звоните на горячую (24 ч.) линию: (555) 892-9403.</p>
                </div>
            </div>
        </div>
    </section>
</main>
<%@ include file="/pages/footer.jsp"%>
</body>
</html>
