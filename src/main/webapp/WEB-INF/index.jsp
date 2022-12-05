<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page session="false" trimDirectiveWhitespaces="true" %>


<style>
    <%@include file="/WEB-INF/css/style.css" %>
</style>
<html>
<head>
</head>

<body>
<c:import url="menu.jsp"/>

<br><br>

<div id="container">
    <center>
        <div id="col-d">
            <a class="navbar-brand" href="#">Новости</a>
        </div>
    </center>
    <br>
    <center>
        <div class="main_news_block">
            <a class="navbar-brand" href="#"> <img src="${pageContext.request.contextPath}/images/news3.png"/></a>
        </div>

        <div class="for_text_news">
            <p>Национальная литературная премия "Большая книга"</p>
        </div>
    </center>
</div>

<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<c:import url="/add/foot.jsp"/>
</body>
</html>
