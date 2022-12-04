<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring_form" uri="http://www.springframework.org/tags/form"  %>

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

    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <form method="get" action="<c:url value="/orderBook"/>">
                <input  type="hidden" value="${id}" name="idBook"><br>
                <label>Читательский билет №</label><input class="form-control" name="idUser"><br>
                <%--    <label>Фио</label><input name="name"><br>--%>
                <label>Локация</label><input class="form-control" name="location"><br>
<%--                <label>Дата заказа</label><input class="form-control" name="data"><br>--%>
<%--                <label>Дата заказа</label><input class="form-control" name="isReturn"><br>--%>

                <input type="submit" class="btn btn-success" value="Заказать">
            </form>
            <div class="col-md-4"></div>


            </form>

        </div>
</body>
</html>

