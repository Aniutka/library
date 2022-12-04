<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page session="false" trimDirectiveWhitespaces="true" %>


<style><%@include file="/WEB-INF/css/style.css"%></style>
<html>
<head>
</head>

<body>
<c:import url="menu.jsp"/>

<spring:url value="/resources/images/book.png" htmlEscape="true" var="petsImage"/>
<br><br>

<div id="container">

        <div id="col-d">
<center>
            <a class="navbar-brand" href="#">News</a></center>
                </div>
            </a>
        <br>
        <br>
        <br>


    <div class="container c_corr">
        <div class="row">

            <div class="col-md-auto">
                <div class="main_news_block">
                    <a class="navbar-brand" href="#"> <img src="${pageContext.request.contextPath}/images/news.jpg"/></a><br>
                    <LABEL><b>Как восстанавливают древние книги в Национальной библиотеке<b></LABEL>
                </div>
            </div>

        <div class="col-md-auto">
                <div class="main_news_block">
                    <a class="navbar-brand" href="#"> <img src="${pageContext.request.contextPath}/images/news2.jpg"/></a><br>
                    <LABEL>Открытый просмотр «Галерея книжных новинок»</LABEL>
                </div>
        </div>

            <div class="col-md-auto">
                <div class="main_news_block">
                    <a class="navbar-brand" href="#"> <img src="${pageContext.request.contextPath}/images/news4.jpg"/></a><br>
                    <LABEL>Новинки детской литературыы</LABEL>
                </div>
            </div>
        </div>
    </div>

</div>

<div class="container">
    <div class="row">
        <div class="col-sm">
            <a class="navbar-brand" href="#"> <img src="${pageContext.request.contextPath}/images/news2.jpg"/></a><br>
        </div>
        <div class="col-sm">
            <a class="navbar-brand" href="#"> <img src="${pageContext.request.contextPath}/images/news2.jpg"/></a><br>
        </div>
        <div class="col-sm">
            <a class="navbar-brand" href="#"> <img src="${pageContext.request.contextPath}/images/news2.jpg"/></a><br>
        </div>
    </div>
</div>

<%--        <div class="row">--%>
<%--            <div class="col-md-2"></div>--%>
<%--        <div class="col-md-8">--%>
<%--                    <a class="navbar-brand" href="#"> <img src="${pageContext.request.contextPath}/images/news2.jpg"/></a>--%>
<%--                        <p>Открытый просмотр «Галерея книжных новинок»</p>--%>
<%--        </div>--%>
<%--            <div class="col-md-2"></div>--%>

<%--            <div class="row">--%>
<%--                <div class="col-md-2"></div>--%>
<%--            <div class="col-md-8">--%>
<%--            <a href="/news.jsp" class="news_link">--%>
<%--                <div class="main_news_block">--%>
<%--                    <a class="navbar-brand" href="#"> <img src="${pageContext.request.contextPath}/images/news4.jpg"/></a>--%>
<%--                    <div class="for_text_news">--%>
<%--                        <p>Новинки детской литературыы</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </a>--%>
<%--        </div>--%>
<%--            <div class="col-md-2">--%>
<%--    </div>--%>
<%--            </div>--%>


</body>
</html>
