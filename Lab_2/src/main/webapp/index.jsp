<%--suppress HtmlUnknownTarget --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lab 2 OOP</title>
    <meta http-equiv="Cache-Control" content="no-cache" />
    <link rel="stylesheet" href="css/style.css" type="text/css"/>
</head>
<body>
<div class="wrap" id="wrap">
    <h1>JSON Lab 2</h1>
    <div class="container">
        <p id="formHeader">Заполните форму <br>для добавления запси</p>
        <form>
            <div class="input-div">
                <label for="bookName">Название книги</label>
                <input type="text" id="bookName" class="input" name="bookName" autofocus required placeholder="Книга Джунглей">
            </div>

            <div class="input-div">
                <label for="author">Автор</label>
                <input type="text" id="author" class="input" name="author" required placeholder="Р. Киплинг">
            </div>

            <div class="input-div">
                <label for="pages">Количество страниц</label>
                <input type="number" step="1" value="10" min="10" id="pages" class="input" name="pages" required>
            </div>

            <div class="input-div">
                <label for="date">Дата публикации</label>
                <input type="date" id="date" class="input" name="publishDate" required>
            </div>

            <div class="input-div">
                <label for="publisher">Издательство</label>
                <input type="text" id="publisher" class="input" name="publisher" required placeholder="Даммерстон">
            </div>


            <button id="submit" type="submit">Отправить</button>
        </form>

    </div>
    <div class="btn-container">
        <button id="getData">Получить данные</button>
    </div>
</div>
<script src="js/index.js" type="text/javascript"></script>
</body>
</html>