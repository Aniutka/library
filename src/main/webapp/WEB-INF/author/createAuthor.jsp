<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring_form" uri="http://www.springframework.org/tags/form"  %>
<style><%@include file="/WEB-INF/css/style.css"%></style>

<html>
<head>
    <title>Добавление автора</title>
</head>
<body>
<c:import url="../menu.jsp"/>
<center>
<p>Добавление автора</p>
</center>
<br>
<div class="container">
    <div class="row">
        <div class="col-md-2"></div>

        <div class="col-md-8">

            <c:url value="/author/createAuthor" var ="createAuthorAction"/>

            <spring_form:form method="post" action="${createAuthorAction}" modelAttribute="createAuthor">
                <div class="form-group row">
                    <spring_form:label class="col-sm-2 col-form-label" path="name">ФИО автора</spring_form:label>
                    <div class="col-sm-10">   <spring_form:input class="form-control" path="name"/><br>
                    </div>
                </div>
                <input type="submit" value="Добавить">

            </spring_form:form>

        </div>
        <div class="col-md-2"></div>
    </div>
</div>

</body>
</html>