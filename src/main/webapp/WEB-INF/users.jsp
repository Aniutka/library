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
        <th id="t1" class="oddRowEvenCol">ФИО</th>
        <th id="t2" class="oddRowOddCol">Дата рождения</th>
        <th id="t3" class="oddRowEvenCol">Дата регистрации</th>
        <th id="t4" class="oddRowEvenCol">Место работы</th>
        <th id="t5" class="oddRowEvenCol">Адрес</th>
    </tr>


    <c:forEach items="${users}" var="user">
    <tr>
        <td headers="t1"><a href="<c:url value="/usersDetails?id=${user.id}"/>">${user.name}</a></td>
        <td headers="t2">${user.dateBirth}</td>
        <td headers="t3">${user.dateRegistration}</td>
        <td headers="t4">${user.placeWork}</td>
        <td headers="t5">${user.address}</td>
    </tr>
    </c:forEach>

    </div>
</table>
<br>

</body>
</html>
