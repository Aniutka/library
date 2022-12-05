<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
</head>
<body>
<c:import url="menu.jsp"/>
<div class="container">

    <form action="<c:url value="/findBook"/>">
        <input name="name">
        <input type="submit" value="Поиск" class="btn btn-primary"></input>
    </form>
    <a href="<c:url value="/showCreateBook"/>">Добавить книгу</a><br>
    <hr>
    <br>
    <h3>Книги</h3>
    <ul class="list-group">
        <li class="list-group-item">
            <a href="<c:url value="/booksTitle"/>">Заглавие</a><br>
        </li>
        <li class="list-group-item">
            <a href="<c:url value="/author"/>">Авторы</a><br>
        </li>
        <li class="list-group-item">
            <a href="<c:url value="/publishing"/>">Издательство</a>
        </li>
    </ul>
    <hr>
</div>
<c:import url="/add/foot.jsp"/>
</body>
</html>