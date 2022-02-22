<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
    <title>Verstkovo</title>
</head>
<body class="d-flex flex-column h-100">
    <main class="flex-shrink-0">
        <%@ include file="pages/navbar.jsp"%>
        <header class="bg-dark py-5">
            <div class="container px-5">
                <div class="row gx-5 align-items-center justify-content-center">
                    <div class="col-lg-8 col-xl-7 col-xxl-6">
                        <div class="my-5 text-center text-xl-start">
                            <h1 class="display-5 fw-bolder text-white mb-2">Современные сайты для вашего бизнеса</h1>
                            <p class="lead fw-normal text-white-50 mb-4">Быстро создаем и настраиваем адаптивные мобильные сайты!</p>
                            <div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start">
                                <a class="btn btn-primary btn-lg px-4 me-sm-3" href="#features">Заказать</a>
                                <a class="btn btn-outline-light btn-lg px-4" href="#">Узнать больше</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center"><img class="img-fluid rounded-3 my-5" src="assets/home/main_img.jpg" alt="..." /></div>
                </div>
            </div>
        </header>
        <!-- Features section-->
        <section class="py-5" id="features">
            <div class="container px-5 my-5">
                <div class="row gx-5">
                    <div class="col-lg-4 mb-5 mb-lg-0"><h2 class="fw-bolder mb-0">Лучший способ начать разработку сайта.</h2></div>
                    <div class="col-lg-8">
                        <div class="row gx-5 row-cols-1 row-cols-md-2">
                            <div class="col mb-5 h-100">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-collection"></i></div>
                                <h2 class="h5">Разнообразные шаблоны</h2>
                                <p class="mb-0">Множество вариантов исполнения блоков для лучшего отображения контента</p>
                            </div>
                            <div class="col mb-5 h-100">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-clipboard-data"></i></div>
                                <h2 class="h5">Продвижение и рост</h2>
                                <p class="mb-0">Инструменты по продвижению и рекламе вашего бизнеса в сети</p>
                            </div>
                            <div class="col mb-5 mb-md-0 h-100">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-toggles2"></i></div>
                                <h2 class="h5">Настройте под себя</h2>
                                <p class="mb-0">Тонкая настройка элементов позволит создать уникальный и удобный ресурс</p>
                            </div>
                            <div class="col h-100">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-shield-check"></i></div>
                                <h2 class="h5">Безопасноть во всем</h2>
                                <p class="mb-0">Данные о ваших пользователях сохраняют конфиденциальность во всех сервисах</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Testimonial section-->
        <div class="py-5 bg-light">
            <div class="container px-5 my-5">
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-10 col-xl-7">
                        <div class="text-center">
                            <div class="fs-4 mb-4 fst-italic">"Отличный сервис - сэкономил уйму времени и сил.
                                Используем сервис по всем фронтам — для презентаций проектов,
                                сайтов отдельных продуктов, корпоративной рассылки и даже больше."</div>
                            <div class="d-flex align-items-center justify-content-center">
                                <img class="rounded-circle me-3" src="assets/home/feedback-cat3.jpg" alt="..." />
                                <div class="fw-bold">
                                    Котофей Бизнесменович
                                    <span class="fw-bold text-primary mx-1">/</span>
                                    CEO, Whiskas
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Blog preview section-->
        <section class="py-5">
            <div class="container px-5 my-5">
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-8 col-xl-6">
                        <div class="text-center">
                            <h2 class="fw-bolder">Последние новости</h2>
                            <p class="lead fw-normal text-muted mb-5">Будьте в курсе о самых главных изменениях и мероприятиях</p>
                        </div>
                    </div>
                </div>
                <div class="row gx-5">
                    <div class="col-lg-4 mb-5">
                        <div class="card h-100 shadow border-0">
                            <img class="card-img-top" src="assets/home/update.jpg" alt="..." />
                            <div class="card-body p-4">
                                <div class="badge bg-success bg-gradient rounded-pill mb-2">News</div>
                                <a class="text-decoration-none link-dark stretched-link" href="#!"><h5 class="card-title mb-3">Новости обновления</h5></a>
                                <p class="card-text mb-0">Узнайте о новых возможностях и функциях платформы</p>
                            </div>
                            <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                <div class="d-flex align-items-end justify-content-between">
                                    <div class="d-flex align-items-center">
                                        <img class="rounded-circle me-3" src="assets/home/news-11.jpg" alt="..." />
                                        <div class="small">
                                            <div class="fw-bold">Кот в очках</div>
                                            <div class="text-muted">Февраль 15, 2022 &middot; 6 мин.</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 mb-5">
                        <div class="card h-100 shadow border-0">
                            <img class="card-img-top" src="assets/home/telegram.jpg" alt="..." />
                            <div class="card-body p-4">
                                <div class="badge bg-primary bg-gradient rounded-pill mb-2">Media</div>
                                <a class="text-decoration-none link-dark stretched-link" href="#!"><h5 class="card-title mb-3">Мы в Telegram</h5></a>
                                <p class="card-text mb-0">Теперь у нас есть Telegram-канал, где все пользователи платформы могут получать необходимую информацию.</p>
                            </div>
                            <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                <div class="d-flex align-items-end justify-content-between">
                                    <div class="d-flex align-items-center">
                                        <img class="rounded-circle me-3" src="assets/home/news-21.jpg" alt="..." />
                                        <div class="small">
                                            <div class="fw-bold">Другой кот в очках</div>
                                            <div class="text-muted">Январь 30, 2022 &middot; 4 мин.</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 mb-5">
                        <div class="card h-100 shadow border-0">
                            <img class="card-img-top" src="/assets/home/paint.jpg" alt="..." />
                            <div class="card-body p-4">
                                <div class="badge bg-dark bg-gradient rounded-pill mb-2">Lesson</div>
                                <a class="text-decoration-none link-dark stretched-link" href="#!"><h5 class="card-title mb-3">Гайд по работе с палитрой цветов и цветовой схемой страницы</h5></a>
                                <p class="card-text mb-0">Рассмотрим основные возможности платформы по работе с палитрой и цветовым оформлением страниц и в рамках занятия создадим лэндинг</p>
                            </div>
                            <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                <div class="d-flex align-items-end justify-content-between">
                                    <div class="d-flex align-items-center">
                                        <img class="rounded-circle me-3" src="assets/home/news-31.jpg" alt="..." />
                                        <div class="small">
                                            <div class="fw-bold">Кот в маске</div>
                                            <div class="text-muted">Январь 24, 2022 &middot; 10 мин.</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Call to action-->
                <aside class="bg-primary bg-gradient rounded-3 p-4 p-sm-5 mt-5">
                    <div class="d-flex align-items-center justify-content-between flex-column flex-xl-row text-center text-xl-start">
                        <div class="mb-4 mb-xl-0">
                            <div class="fs-3 fw-bold text-white">Не пропускайте обновления</div>
                            <div class="text-white-50">Подпишитесь на нашу рассылку и будьте в курсе всех новостей платформы!</div>
                        </div>
                        <div class="ms-xl-4">
                            <div class="input-group mb-2">
                                <input class="form-control" type="text" placeholder="Email address..." aria-label="Email address..." aria-describedby="button-newsletter" />
                                <button class="btn btn-outline-light" id="button-newsletter" type="button">Подписаться</button>
                            </div>
                            <div class="small text-white-50">Мы никогда не распространяем данные наших пользователей</div>
                        </div>
                    </div>
                </aside>
            </div>
        </section>
    </main>
<%@ include file="pages/footer.jsp"%>
</body>
</html>