<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring_form" uri="http://www.springframework.org/tags/form"  %>

<html>
<head>

</head>
<body>
<c:import url="menu.jsp"/>

<c:url value="/registration" var ="registrationUser"/>
<div class="container">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">

			<spring_form:form method="post" action="${registrationUser}" modelAttribute="registration">
				<div class="form-group row">
					<spring_form:label for="inputEmail3" class="col-sm-2 col-form-label" path="name">Имя</spring_form:label>
					<div class="col-sm-10">
						<spring_form:input class="form-control" path="name"/>
					</div>
				</div>
				<div class="form-group row">
					<spring_form:label class="col-sm-2 col-form-label" path="login">Логин</spring_form:label>
					<div class="col-sm-10">
						<spring_form:input class="form-control" path="login"/><br>
					</div>
				</div>
				<div class="form-group row">
					<spring_form:label class="col-sm-2 col-form-label" path="password">Пароль</spring_form:label>
					<div class="col-sm-10">
						<spring_form:input class="form-control" path="password"/>
					</div>
				</div>
				<div class="form-group row">
					<spring_form:label class="col-sm-2 col-form-label" path="dateBirth">Дата рождения</spring_form:label>
					<div class="col-sm-10">
						<spring_form:input class="form-control" path="dateBirth"/><br>
					</div>
				</div>
				<div class="form-group row">
					<spring_form:label class="col-sm-2 col-form-label" path="dateRegistration">Дата регистрации</spring_form:label>
					<div class="col-sm-10">
						<spring_form:input class="form-control" path="dateRegistration"/>
					</div>
				</div>
				<div class="form-group row">
					<spring_form:label class="col-sm-2 col-form-label" path="placeWork">Место работы</spring_form:label>
					<div class="col-sm-10">
						<spring_form:input class="form-control" path="placeWork"/><br>
					</div>
				</div>

				<input type="submit" value="Зарегестрироваться">

</spring_form:form>

			</div>
			<div class="col-md-2"></div>
		</div>
	</div>


</body>
</html>