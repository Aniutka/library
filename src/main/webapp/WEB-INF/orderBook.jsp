<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring_form" uri="http://www.springframework.org/tags/form"  %>

<html>
<head>
</head>
<body>
<c:import url="menu.jsp"/>

<div class="container">

    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
<div method="get" action="<c:url value="/orderBook"/>">
    <label>Книга ${id}</label><input class="form-control" name="idBook"><br>
    <label>Читательский билет №</label><input class="form-control" name="idUser"><br>
<%--    <label>Фио</label><input name="name"><br>--%>
    <label>Локация</label><input class="form-control" name="location"><br>
    <label>Дата заказа</label><input class="form-control" name="data"><br>
    <input type="submit" class="btn btn-success" value="Заказать">
</div>
        <div class="col-md-4"></div>

</form>

</div>


<%--<div class="container">--%>
<%--    <div class="row">--%>
<%--        <div class="col-md-4"></div>--%>
<%--        <div class="col-md-4">--%>
<%--            <form method="post" action="<c:url value="/authorization"/>">--%>
<%--                <input type="text" name="login" class="form-control" placeholder="Введите логин или почту"><br>--%>
<%--                <input type="password" name="password" class="form-control" placeholder="Введите пароль"><br>--%>
<%--                <input type="submit" class="btn btn-success" value="Авторизоваться"><br>--%>
<%--                <input type="submit" class="btn btn-link" value="Забыл пароль?">--%>
<%--            </form>--%>
<%--        </div>--%>
<%--        <div class="col-md-4"></div>--%>
<%--    </div>--%>
<%--</div>--%>


</body>

<%--<c:url value="/orderBook" var ="orderBookAction"/>--%>
<%--&lt;%&ndash;<p>Книга ${book.id}</p>&ndash;%&gt;--%>

<%--<spring_form:form method="post" action="${orderBookAction}" modelAttribute="orderBook">--%>
<%--    <spring_form:label path="id">Номер читательского билета</spring_form:label><spring_form:input path="id"/><br>--%>
<%--    <spring_form:label path="name">ФИО</spring_form:label><spring_form:input path="name"/><br>--%>
<%--    <spring_form:label path="location">Локация</spring_form:label><spring_form:input path="location"/><br>--%>
<%--    <input type="submit" value="ORDER">--%>

<%--</spring_form:form>--%>
