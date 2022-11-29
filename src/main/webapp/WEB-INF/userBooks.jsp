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
        <th id="t2" class="oddRowEvenCol">Reader</th>
        <th id="t3" class="oddRowEvenCol">Book</th>
    </tr>


<c:forEach items="${userBooks}" var="user">
    <tr>
        <td headers="t2"><a href="<c:url value="/usersDetails?id=${user.user.id}"/>">${user.user.name}</a></td>
        <td headers="t3"><em><c:forEach items="${userBooks}" var ="book">${book.book.name}<br></c:forEach></em></td>
    </tr>
        </c:forEach>

    </div>
</table>
<br>
</body>
</html>
