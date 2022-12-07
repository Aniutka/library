<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
</head>
<body>


<c:import url="menu.jsp"/>

<a href="<c:url value="/showorderBook?id=${book.id}"/>">Заказать книгу</a><br>

<br>

<table class="table itemDisplayTable">
    <tbody>
    <tr>
        <td class="metadataFieldLabel dc_title">Название:&nbsp;</td>
        <td class="metadataFieldValue dc_title">${book.name}</td>
    </tr>
    <tbody>
    <tr>
        <td class="metadataFieldLabel dc_title">Авторы:&nbsp;</td>
        <td class="metadataFieldValue dc_title">
            <c:forEach items="${book.authors}" var="author">
                ${author.name}<br>
            </c:forEach>
        </td>
    </tr>
    <tbody>
    <tr>
        <td class="metadataFieldLabel dc_title">Жанр:&nbsp;</td>
        <td class="metadataFieldValue dc_title">${book.genre.name}</td>
    </tr>
    <tbody>
    <tr>
        <td class="metadataFieldLabel dc_title">Дата публикации:&nbsp;</td>
        <td class="metadataFieldValue dc_title">${book.yearPublishing}</td>
    </tr>
    <tbody>
    <tr>
        <td class="metadataFieldLabel dc_title">Количество страниц:&nbsp;</td>
        <td class="metadataFieldValue dc_title">${book.numberPages}</td>
    </tr>
    <tbody>

</table>
<c:import url="/add/foot.jsp"/>
</body>

</html>