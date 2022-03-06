<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>FORMULARIO DE ALTA DE TEMA</h3>
	<form action="/admon/altaTema" method="post">

		<p>
			Descripcion: <input type="text" name="descTema">
		</p>
		<p>
			Abreviatura: <input type="text" name="abreviatura">
		</p>
		<p>
			<input type="submit" value="Enviar">
		</p>

	</form>
</body>
</html>