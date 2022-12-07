<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style><%@include file="/WEB-INF/css/style.css"%></style>
<html>
<head>
    <title>Reader</title>
</head>
<body>
<c:import url="menu.jsp"/>
<center>
<div>
    <p  style="color: black">Вы уверены, что хотите удалить книгу:   ${book.name}</p>
    <a href="<c:url value="/deleteB?id=${book.id}"/>">Удалить</a>
    <a href="<c:url value="/"/>">          Назад</a>
</div>
</center>

<c:import url="/add/foot.jsp"/>
</body>
</html>







