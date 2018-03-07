<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Agenda</title>
 </head>
 <body>
 	<form:form method="POST">
  <h1 style="color: green; text-align: center;">Actualizar contacto</h1>
    <c:forEach var="datos" items="${datos}">
	    <label>Nombre</label>
	    <input name="name" type="text" value="${datos.name}" readonly><br>
	    <!-- El attr readonly hace que el campo no pueda ser escrito. Con disabled NO funciona y se coje valor null. -->
	    <label>Email</label>
	    <input name="email" type="text" value="${datos.email}"><br>
	    <label>Dirección</label>
	    <input name="address" type="text" value="${datos.address}"><br>
	    <label>Teléfono</label>
	    <input name="telephone" type="text" value="${datos.telephone}"><br>
	</c:forEach>
    <input id="submit" type="submit" tabindex="5" value="Actualizar">
 </form:form>
    <br><a href="/employee">Atrás</a>
 </body>
</html>
