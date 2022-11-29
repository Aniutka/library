
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>АДРЕСА</p>

<c:forEach items="${address}" var="adress">
    ${adress.city}
    ${adress.street}<br>
</c:forEach>

</body>
</html>