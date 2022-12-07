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

<p>Изменене книги</p>
${book.name}
<br>

            <c:url value="/bookUpdate" var ="bookUpdateAction"/>

            <spring_form:form method="post" action="${bookUpdateAction}" modelAttribute="bookUpdate">
                <div class="form-group row">
                    <spring_form:label class="col-sm-2 col-form-label" path="id" >id</spring_form:label>
                    <div class="col-sm-10">   <spring_form:input class="form-control" path="id"/><br>
                    </div>
                </div>

                <div class="form-group row">
                    <spring_form:label class="col-sm-2 col-form-label" path="name" >Название книги</spring_form:label>
                    <div class="col-sm-10">   <spring_form:input class="form-control" path="name"/><br>
                    </div>
                </div>
                <div class="form-group row"> <spring_form:label class="col-sm-2 col-form-label" path="year" >Год</spring_form:label>
                    <div class="col-sm-10"> <spring_form:input class="form-control" path="year"/><br></div></div>
                <div class="form-group row"> <spring_form:label class="col-sm-2 col-form-label" path="numberPages">Кол-во страниц</spring_form:label>
                    <div class="col-sm-10">  <spring_form:input class="form-control" path="numberPages"/><br></div></div>
                <input type="submit" value="Добавить">

            </spring_form:form>



</body>
</html>