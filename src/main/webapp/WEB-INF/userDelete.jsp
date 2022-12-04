<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style><%@include file="/WEB-INF/css/style.css"%></style>
<html>
<head>
    <title>Reader</title>
</head>
<body>
<c:import url="menu.jsp"/>

<div style="margin-left: 30%">
    <p>Вы уверены, что хотите удалить читателя:${user.name}</p>

    <a href="<c:url value="/delete?id=${user.id}"/>">Удалить</a>
    <a href="<c:url value="/"/>">Назад</a>


<%--        <form method="get" action="<c:url value="/delete?id=${user.id}"/>">--%>
<%--            <input class="del" type="submit" value="Удалить"/>--%>
<%--        </form>--%>


<%--        <form th:method="GET" th:action="@{/{id}(id=${person.getId()})}">--%>
<%--            <input class="upd" type="submit" value="Назад"/>--%>
<%--        </form>--%>

</div>
</body>
</html>







