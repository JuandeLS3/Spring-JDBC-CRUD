<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Mostrando a ${n}</title>
 </head>
 <body>
 	<p>
      <c:forEach var="datos" items="${datos}">
      	<p>Nombre: <b>${datos.name}</b></p>
      	<p>Dirección: ${datos.address}</p>
      	<p>Correo: ${datos.email}</p>
      	<p>Teléfono: ${datos.telephone}</p>
      	<a href="/delete/${n}">Borrar contacto</a>
      	<hr>
      </c:forEach>
    </p>
    
    <a href="/employee">Atrás</a>
 </body>
</html>
