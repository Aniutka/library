<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Reader</title>
</head>
<body>

<c:import url="menu.jsp"/>

<form action="<c:url value="/findUsers"/>">
    <input name="name">
    <input type="submit" value="Поиск" class="btn btn-primary"></input>
</form>
<br>
<a href="<c:url value="/showCreateUser"/>">Добавить читателя</a><br>
<br>

<table>
    <tr>
        <th id="t1" class="oddRowEvenCol">№ читательского билета </th>
        <th id="t2" class="oddRowEvenCol">ФИО</th>
        <th id="t3" class="oddRowOddCol">Дата рождения</th>
        <th id="t4" class="oddRowEvenCol">Дата регистрации</th>
        <th id="t5" class="oddRowEvenCol">Место работы</th>
        <th id="t6" class="oddRowEvenCol">Адрес</th>
        <th id="t7" class="oddRowEvenCol"></th>

    </tr>

    <c:forEach items="${users}" var="user">
    <tr>
        <td headers="t1">${user.id}</td>
        <td headers="t2"><a href="<c:url value="/usersDetails?id=${user.id}"/>">${user.name}</a></td>
        <td headers="t3">${user.dateBirth}</td>
        <td headers="t4">${user.dateRegistration}</td>
        <td headers="t5">${user.placeWork}</td>
        <td headers="t6">г.${user.address.city.name}, ${user.address.street}, ${user.address.building}</td>
        <td headers="t7"><a href="<c:url value="/UserDelete?id=${user.id}"/>">Удалить</a></td>

    </tr>
    </c:forEach>

    </div>
</table>
<br>
<c:import url="/add/foot.jsp"/>
</body>
</html>
