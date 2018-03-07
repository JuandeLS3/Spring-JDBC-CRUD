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
  <h1 style="color: green; text-align: center;">Añadir contacto</h1>
    <p>
    <label>Nombre</label>
    <input name="name" type="text" value=""><br>
    <label>Email</label>
    <input name="email" type="text" value=""><br>
    <label>Dirección</label>
    <input name="address" type="text" value=""><br>
    <label>Teléfono</label>
    <input name="telephone" type="text" value=""><br>

    <input id="submit" type="submit" tabindex="5" value="Añadir">
 </form:form>
    <a href="employeee">Atrás</a>
 </body>
</html>
