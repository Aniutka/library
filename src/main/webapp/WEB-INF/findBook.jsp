<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <c:import url="css/style.css"/>
</head>
<body>


<c:import url="menu.jsp"/>

<table>
    <tbody><tr>
        <th id="t1" class="oddRowEvenCol">Дата выпуска</th>
        <th id="t2" class="oddRowOddCol">Название</th>
        <th id="t3" class="oddRowEvenCol">Автор(ы)</th>
        <th id="t4" class="oddRowEvenCol">Редакция</th>
    </tr>
    <tr>
        <td headers="t1"><em>${book.year_publishing}</em></td>
        <td>
            <a href="<c:url value="/booksDetails?id=${book.id}"/>">${book.name}</a><br>
        <td headers="t3"><em> <c:forEach items="${book.authors}" var ="author">
                ${author.name}<br>
            </c:forEach>
         </td>
        <td headers="t1"><em>${book.publishing.name}</em></td>

    </tr>
    </tbody>
</table>

<br>
</body>

</html>