<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
</head>
<body>


<c:import url="menu.jsp"/>

<table class="table itemDisplayTable">
    <tbody><tr><td class="metadataFieldLabel dc_title">Автор:&nbsp;</td><td class="metadataFieldValue dc_title">${author.name}</td></tr>
    <tbody><tr><td class="metadataFieldLabel dc_title">Название книг:&nbsp;</td><td class="metadataFieldValue dc_title">
        <c:forEach items="${author.books}" var ="author">
            <a href="<c:url value="/booksDetails?id=${author.id}"/>">${author.name}</a><br>
        </c:forEach>
    </td></tr>
    </tbody></table>

</body>

</html>