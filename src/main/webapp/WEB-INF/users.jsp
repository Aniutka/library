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
        <th id="t2" class="oddRowEvenCol">ФИО</th>
    </tr>

    <c:forEach items="${users}" var="user">
    <tr>
        <td headers="t2"><a href="<c:url value="/usersDetails?id=${user.id}"/>">${user.name}</a></td>
    </tr>
    </c:forEach>

    </div>
</table>
<br>

</body>
</html>
