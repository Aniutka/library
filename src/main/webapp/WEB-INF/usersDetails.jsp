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
<%--        <th id="t2" class="oddRowOddCol">Дата заказа</th>--%>
    </tr>
    <c:forEach items="${books}" var ="userBooks">
        <tr><td headers="t1">${userBooks.name} </td></tr>
<%--        <td headers="t2">${userBooks.userBooks.order_data}</td></tr>--%>
    </c:forEach>



</table>

</body>

</html>