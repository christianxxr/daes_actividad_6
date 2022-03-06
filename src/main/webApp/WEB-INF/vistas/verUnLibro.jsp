<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<body>


	<div class="container">
		<h1 class="text-primary">Detalle del Libro seleccionado</h1>
		<table class="table table-striped table-sm">
			<tr>
				<th>Isbn</th>
				<th>Titulo</th>
				<th>Autor</th>
				<th>Precio</th>
				<th>Paginas</th>
				<th>Novedad</th>
				<th>Tema</th>
				<th>Portada</th>
				<th><sec:authorize access="hasAnyAuthority('ROL_CLIENTE')">
						Opciones
					</sec:authorize></th>
			</tr>
			<tr>
				<td>${listaLibros.isbn}</td>
				<td>${listaLibros.titulo}</td>
				<td>${listaLibros.autor}</td>
				<td>${listaLibros.precioUnitario}</td>
				<td>${listaLibros.paginas}</td>
				<td>${listaLibros.novedad}</td>
				<td>${listaLibros.tema.descTema }</td>
				<td><img src ="/harryPotter.png" width="200px"></td>
				<td><sec:authorize access="hasAnyAuthority('ROL_CLIENTE')">
						<a href="/cliente/addCarrito/${listaLibros.isbn }"
							class="btn btn-warning btn-sm">Añadir al carrito</a>
					</sec:authorize></td>
			</tr>
		</table>
	</div>



	<a href="/">Volver al inicio</a>


</body>
</html>