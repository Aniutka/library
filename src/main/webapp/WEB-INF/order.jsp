<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    <%@include file="/WEB-INF/css/style.css" %>
</style>
<html>
<head>
</head>
<body>
<c:import url="menu.jsp"/>

<div style="margin-left: 41%">
    <p> Заказ книги прошел успешно!!!<br>
        Читатель: ${userBooks.user.name} <br>
        Книга: ${userBooks.book.name} </p>

    <a href="<c:url value="/"/>">На главную</a>
    <a href="<c:url value="/booksTitle"/>">К каталогу книг</a>

</div>
<c:import url="/add/foot.jsp"/>
</body>
</html>