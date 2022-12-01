<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style><%@include file="/WEB-INF/css/style.css"%></style>


<html>
<head>
    <title>Title</title>
</head>
<body>

<c:import url="menu.jsp"/>

<div class="container">

<table>
    <tbody>
    <tr>
        <th>Авторы</th>
    </tr>

    <c:forEach items="${publishingList}" var="publishing">
        <tr>
       <td> <a href="<c:url value="/publishingDetails?id=${publishing.id}"/>">${publishing.name}</a></td>
    </tr>
    </c:forEach>

    </tbody>
</table>
</div>
</body>
</html>