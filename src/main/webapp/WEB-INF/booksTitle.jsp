<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style><%@include file="/WEB-INF/css/style.css"%></style>
<html>
<head>
    <title>Title</title>
<%--    <c:import url="css/style.css"/>--%>
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
<%--    <div>--%>
    <tr>

        <th id="t1" class="oddRowOddCol">Название</th>
        <th id="t2" class="oddRowEvenCol">Дата выпуска</th>
        <th id="t3" class="oddRowEvenCol">Автор(ы)</th>
        <th id="t4" class="oddRowEvenCol">Редакция</th>
    </tr>


        <c:forEach items="${books}" var="book">
    <tr>

        <td headers="t1"><a href="<c:url value="/booksDetails?id=${book.id}"/>">${book.name}</a></td>
        <td headers="t2"><em>${book.year_publishing}</em></td>
        <td headers="t3"><em><c:forEach items="${book.authors}" var ="author">${author.name}<br></c:forEach></em></td>
        <td headers="t4"><em>${book.publishing.name}</em></td>
    </tr>
        </c:forEach>

    </div>


</table>

</tbody>


<%--<c:forEach items="${books}" var="book">--%>

<%--&lt;%&ndash; <a href="/booksDetails?id=${book.id}">${book.name}</a><br>&ndash;%&gt;&ndash;%&gt;--%>
<%--    <a href="<c:url value="/booksDetails?id=${book.id}"/>">${book.name}</a><br>--%>
<%--    <td> <tr>--%>
<%--&lt;%&ndash;<${books.name}<br></tr></td>&ndash;%&gt;--%>
<%--        --%>
<%--</c:forEach>--%>

<%--<a href="<c:url value ="/"/>">На главную</a>--%>

</body>
</html>