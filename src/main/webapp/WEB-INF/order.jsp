<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
</head>
<body>
<c:import url="menu.jsp"/>
Заказ книги прошел успешно!!!

Читатель: ${userBooks.user.name} <br>
Книга: ${userBooks.book.name}
<%--<div class="container">--%>
<%--    <ul class="list-group">--%>
<%--        <li class="list-group-item">--%>
<%--            <a href="<c:url value="/booksTitle"/>">Абонемент</a><br>--%>

<%--        </li>--%>
<%--        <li class="list-group-item">--%>
<%--            <a href="<c:url value="/author"/>">Читальный зал</a><br>--%>
<%--        </li>--%>
<%--    </ul>--%>

    <c:import url="/add/foot.jsp"/>

</div>

</body>
</html>