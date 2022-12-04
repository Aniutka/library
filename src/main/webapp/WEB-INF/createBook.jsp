<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring_form" uri="http://www.springframework.org/tags/form"  %>
<style><%@include file="/WEB-INF/css/style.css"%></style>

<html>
<head>
    <title>Добавление книги</title>
</head>
<body>
<c:import url="menu.jsp"/>

<p>Добавление книги</p>

<%--<form action="<c:url value="/createBook"/>">--%>
<%--    <label>Название книги</label><input name="name"><br>--%>
<%--    <label>Год</label><input name="year"><br>--%>
<%--    <label>Кол-во страниц</label><input name="numberPage"><br>--%>
<%--    <label>Автор</label><input name="author"><br>--%>
<%--    <input type="submit" value="createBook">--%>
<%--</form>--%>
<br>
    --------------
<div class="container">
    <div class="row">
        <div class="col-md-2"></div>

        <div class="col-md-8">

    <c:url value="/createBook" var ="createBookAction"/>

    <spring_form:form method="post" action="${createBookAction}" modelAttribute="createBook">
            <div class="form-group row">
        <spring_form:label class="col-sm-2 col-form-label" path="name">Название книги</spring_form:label>
                <div class="col-sm-10">   <spring_form:input class="form-control" path="name"/><br>
                </div>
            </div>
            <div class="form-group row"> <spring_form:label class="col-sm-2 col-form-label" path="year" >Год</spring_form:label>
                <div class="col-sm-10"> <spring_form:input class="form-control" path="year"/><br></div></div>
                <div class="form-group row"> <spring_form:label class="col-sm-2 col-form-label" path="numberPage">Кол-во страниц</spring_form:label>
                    <div class="col-sm-10">  <spring_form:input class="form-control" path="numberPage"/><br></div></div>
                    <div class="form-group row"> <spring_form:label class="col-sm-2 col-form-label" path="authorId">Автор</spring_form:label>
                        <div class="col-sm-10">   <spring_form:input class="form-control" path="authorId"/><br></div></div>
        <input type="submit" value="Добавить">

</spring_form:form>

        </div>
        <div class="col-md-2"></div>
    </div>
</div>

<select>
    <c:forEach var="item" items="${authors}">
        <option>${item.name}</option>
    </c:forEach>
</select>
</body>
</html>