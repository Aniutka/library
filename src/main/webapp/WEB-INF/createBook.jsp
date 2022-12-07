<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring_form" uri="http://www.springframework.org/tags/form" %>
<style>
    <%@include file="/WEB-INF/css/style.css" %>
</style>

<html>
<head>
    <title>Добавление книги</title>
</head>
<body>
<c:import url="menu.jsp"/>
<div class="container">
    <center>
        <p>Добавление книги</p></center>
    <br>
    <div class="row">
        <div class="col-md-2"></div>

        <div class="col-md-8">

            <c:url value="/createBook" var="createBookAction"/>

            <spring_form:form method="post" action="${createBookAction}" modelAttribute="createBook">
                <div class="form-group row">
                    <spring_form:label class="col-sm-2 col-form-label" path="name">Название книги</spring_form:label>
                    <div class="col-sm-10"><spring_form:input class="form-control" path="name"/><br>
                    </div>
                </div>
                <div class="form-group row"><spring_form:label class="col-sm-2 col-form-label"
                                                               path="genre">Жанр</spring_form:label>


                    <div class="col-sm-10">
                        <spring_form:select path="genre">
                            <c:forEach var="item" items="${genres}">
                                <option value="${item.id}">${item.name}</option>
                            </c:forEach>
                        </spring_form:select></div>
                </div>


                <div class="form-group row"><spring_form:label class="col-sm-2 col-form-label"
                                                               path="year">Год</spring_form:label>
                    <div class="col-sm-10"><spring_form:input class="form-control" path="year"/><br></div>
                </div>

                <div class="form-group row"><spring_form:label class="col-sm-2 col-form-label"
                                                               path="numberPages">Кол-во страниц</spring_form:label>
                    <div class="col-sm-10"><spring_form:input class="form-control" path="numberPages"/><br></div>
                </div>

                <div class="form-group row"><spring_form:label class="col-sm-2 col-form-label"
                                                               path="PublishingId">Публикация</spring_form:label>

                    <div class="col-sm-10">
                        <spring_form:select path="PublishingId">
                            <c:forEach var="item" items="${publishing}">
                                <option value="${item.id}">${item.name}</option>
                            </c:forEach>
                        </spring_form:select></div>
                </div>

                <div class="form-group row"><spring_form:label class="col-sm-2 col-form-label"
                                                               path="authorId">Автор</spring_form:label>

                    <div class="col-sm-10">
                        <spring_form:select path="authorId">
                            <c:forEach var="item" items="${authors}">
                                <option value="${item.id}">${item.name}</option>
                            </c:forEach>
                        </spring_form:select></div>
                </div>

                <input type="submit" value="Добавить">

            </spring_form:form>

        </div>
        <div class="col-md-2"></div>
    </div>
</div>


</body>
</html>