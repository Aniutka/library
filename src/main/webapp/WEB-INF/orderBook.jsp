<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring_form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
</head>
<body>
<c:import url="menu.jsp"/>

<div class="container">

    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <form method="get" action="<c:url value="/orderBook"/>">
                <input type="hidden" value="${id}" name="idBook"><br>
                <label>Читательский билет №</label><input class="form-control" name="idUser"><br>
                <label>Локация</label><input class="form-control" name="location"><br>
                <input type="submit" class="btn btn-success" value="Заказать">
            </form>
        </div>
        <div class="col-md-4"></div>

    </div>
</div>
<c:import url="/add/foot.jsp"/>
</body>
</html>

