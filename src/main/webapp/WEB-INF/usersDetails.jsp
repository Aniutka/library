<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
</head>
<body>

<c:import url="menu.jsp"/>

<br>
<table class="table itemDisplayTable">
    <tr>
        <th id="t1" class="oddRowEvenCol">Название книги</th>
        <th id="t2" class="oddRowEvenCol"></th>
        <%--        <th id="t2" class="oddRowOddCol">Дата заказа</th>--%>
    </tr>
    <c:forEach items="${books}" var="userBooks">
        <tr>
            <td headers="t1">${userBooks.name} </a></td>
            <td headers="t2"><a href="<c:url value="/UserBookReturned?id=${userBooks.id}"/>">Вернуть книгу</a></td>
        </tr>
    </c:forEach>
</table>
<c:import url="/add/foot.jsp"/>
</body>

</html>