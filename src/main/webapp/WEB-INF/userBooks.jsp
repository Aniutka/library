<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Reader</title>
</head>
<body>

<c:import url="menu.jsp"/>

<table>
    <tr>
        <th id="t2" class="oddRowEvenCol">Читатель</th>
        <th id="t3" class="oddRowEvenCol">Книга</th>
        <th id="t4" class="oddRowEvenCol">Дата заказа</th>
        <th id="t5" class="oddRowEvenCol">Дата возврата</th>
        <th id="t6" class="oddRowEvenCol">Локация/th>
        <th id="t7" class="oddRowEvenCol">Возвращена</th>
    </tr>

    <c:forEach items="${userBooks}" var="user">
        <tr>
            <td headers="t2"><a href="<c:url value="/usersDetails?id=${user.user.id}"/>">${user.user.name}</a></td>
            <td headers="t3"><em>${user.book.name}</em></td>

            <td headers="t4"><em>${user.order_data}</em></td>
            <td headers="t5"><em>${user.return_date}</em></td>

<%--            <td headers="t4"><em>${user.order_data.getTime()}</em></td>--%>
<%--            <td headers="t5"><em>${user.return_date.getTime()}</em></td>--%>

            <td headers="t6"><em>${user.location.name}</em></td>
            <c:if test="${user.isReturn == 1}">
                <td headers="t7"><em>Не возвращена</em></td>
            </c:if>
            <c:if test="${user.isReturn== 0}">
                <td headers="t8"><em>Возвращена</em></td>
            </c:if>
        </tr>
    </c:forEach>
    </div>
</table>
<br>
<c:import url="/add/foot.jsp"/>
</body>
</html>
