<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring_form" uri="http://www.springframework.org/tags/form"  %>
<style><%@include file="/WEB-INF/css/style.css"%></style>

<html>
<head>
    <title>Добавление автора</title>
</head>
<body>

<center>
<p>Добавление издательства</p>
</center>
<br>

            <c:url value="/createPublishing" var ="createPublishingAction"/>

            <spring_form:form method="post" action="${createPublishingAction}" modelAttribute="create">
                <div class="form-group row">
                    <spring_form:label class="col-sm-2 col-form-label" path="name">Издательстово</spring_form:label>
                    <div class="col-sm-10">   <spring_form:input class="form-control" path="name"/><br>
                    </div>
                </div>
                <input type="submit" value="Добавить">

            </spring_form:form>


</body>
</html>