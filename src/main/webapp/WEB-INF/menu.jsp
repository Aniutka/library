<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<style>
    <%@include file="/WEB-INF/css/style.css" %>
</style>

<head>
    <title>Библиотека</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#"> <img src="${pageContext.request.contextPath}/images/library.jpg"/></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="<c:url value ="/"/>">Главная</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value ="/books"/>">Каталог</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value ="/users"/>">Читатели</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value ="/userBooks"/>">История заказов</a>
            </li>
        </ul>

        <form class="form-inline my-2 my-lg-0">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <h3>${pageContext.request.userPrincipal.name}</h3>
                    <sec:authorize access="!isAuthenticated()">
                <li class="nav-link"><a href="<c:url value ="/login"/>">Войти</a></li>
                <br>
                <li class="nav-link"><a href="<c:url value ="/showCreateUser"/>">Зарегестрироваться</a></li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-link"><a href="<c:url value="/logout"/>">Logout</a></li>
                </sec:authorize>

                </li>
            </ul>
        </form>
    </div>
</nav>
<br>
<center>
    <h1 class="col_h">Библиотека</h1><a class="im" href="#">
</center>
<br>

</body>

