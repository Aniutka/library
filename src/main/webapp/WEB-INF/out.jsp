<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
</head>
<body>
<c:import url="menu.jsp"/>
<div class="container">
				<a class="nav-link active" href="<c:url value ="/showCreateUser"/>">Новый пользователь? Зарегистрируйтесь!lll</a>
				<p>   Пожалуйста, введите Ваш логин и пароль.</p>
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<form method="post" action="<c:url value="/authorization"/>">
				<input type="text" name="login" class="form-control" placeholder="Введите логин или почту"><br>
				<input type="password" name="password" class="form-control" placeholder="Введите пароль"><br>
					<input type="submit" class="btn btn-success" value="Авторизоваться"><br>
					<input type="submit" class="btn btn-link" value="Забыл пароль?">
			</form>
		</div>
		<div class="col-md-4"></div>
	</div>
</div>

</body>
</html>