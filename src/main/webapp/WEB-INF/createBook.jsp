<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring_form" uri="http://www.springframework.org/tags/form"  %>


<html>
<head>
    <title>Добавление книги</title>
</head>
<body>
<p>Добавление книги</p>

<form action="<c:url value="/createBook"/>">
    <label>Название книги</label><input name="name"><br>
    <label>Год</label><input name="year"><br>
    <label>Кол-во страниц</label><input name="numberPage"><br>
    <label>Автор</label><input name="author"><br>
    <input type="submit" value="createBook">
</form>
<br>
    --------------
    <br>

    <c:url value="/createBook" var ="createBookAction"/>

    <spring_form:form method="post" action="${createBookAction}" modelAttribute="createBook">
        <spring_form:label path="name">Название книги</spring_form:label><spring_form:input path="name"/><br>
        <spring_form:label path="year">Год</spring_form:label><spring_form:input path="year"/><br>
        <spring_form:label path="numberPage">Кол-во страниц</spring_form:label><spring_form:input path="numberPage"/><br>
        <spring_form:label path="authorId">Автор</spring_form:label><spring_form:input path="authorId"/><br>
        <input type="submit" value="createBook">

</spring_form:form>

</body>
</html>