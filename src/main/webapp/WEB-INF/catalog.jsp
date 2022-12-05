<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Каталог</title>
</head>
<body>
<c:import url="menu.jsp"/>

<div class="container">
    <ul class="list-group">
        <li class="list-group-item">
            <a href="<c:url value="/books"/>">Книги</a><br>
        </li>
        <li class="list-group-item">
            <a href="/catalog/periodics">Журналы</a>
        </li>
        <li class="list-group-item">
            <a href="/catalog/articles">Статьи</a>
        </li>
        <li class="list-group-item">
            <a href="/catalog/acts">Технические нормативные правовые акты</a>
        </li>
    </ul>
    <hr>

</div>
<c:import url="/add/foot.jsp"/>
</body>

</html>