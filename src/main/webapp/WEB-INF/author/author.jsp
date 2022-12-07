<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    <%@include file="/WEB-INF/css/style.css" %>
</style>


<html>
<head>
    <title>Title</title>
</head>
<body>

<c:import url="../menu.jsp"/>

<div class="container">

    <form action="<c:url value="/author/findAuthors"/>">
        <input name="name">
        <input type="submit" value="Поиск" class="btn btn-primary"></input>
    </form>

    <a href="<c:url value="/author/showCreateAuthor"/>">Добавить автора</a><br>
    <hr>
    <br>

    <table>
        <tbody>
        <tr>
            <th>Авторы</th>
            <th>Операции</th>
        </tr>

        <c:forEach items="${author}" var="authorList">
            <tr>
                <td><a href="<c:url value="/author/authorBook?id=${authorList.id}"/>">${authorList.name}</a></td>
            <td><a href="<c:url value="/author/authorDelete?id=${authorList.id}"/>">Удалить</a></td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>
<c:import url="/add/foot.jsp"/>
</body>
</html>