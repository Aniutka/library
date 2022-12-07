<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    <%@include file="/WEB-INF/css/style.css" %>
</style>
<html>
<head>
    <title>Книги</title>
</head>
<body>
<c:import url="menu.jsp"/>

<div class="container">

    <form action="<c:url value="/findBook"/>">
        <input name="name">
        <input type="submit" value="Поиск" class="btn btn-primary"></input>
    </form>

    <a href="<c:url value="/showCreateBook"/>">Добавить книгу</a><br>
    <hr>
    <br>

    <table>
        <tr>

            <th id="t1" class="oddRowOddCol">Название</th>
            <th id="t2" class="oddRowOddCol">Жанр</th>
            <th id="t3" class="oddRowEvenCol">Дата выпуска</th>
            <th id="t4" class="oddRowEvenCol">Автор(ы)</th>
            <th id="t5" class="oddRowEvenCol">Редакция</th>
            <th id="t6" class="oddRowEvenCol">Операции</th>
        </tr>


        <c:forEach items="${books}" var="book">
        <tr>

            <td headers="t1"><a href="<c:url value="/booksDetails?id=${book.id}"/>">${book.name}</a></td>
            <td headers="t2"><em>${book.genre.name}</em></td>
            <td headers="t3"><em>${book.yearPublishing}</em></td>
            <td headers="t4"><em><c:forEach items="${book.authors}" var="author">${author.name}<br></c:forEach></em>
            </td>
            <td headers="t5"><em>${book.publishing.name}</em></td>
            <td headers="t6">
            <a href="<c:url value="/bookDelete?id=${book.id}"/>">Удалить</a><br>
            <a href="<c:url value="/editBook?id=${book.id}"/>">Изменить</a></td>
        </tr>
        </c:forEach>

</div>

</table>

</tbody>
<c:import url="/add/foot.jsp"/>
</body>
</html>