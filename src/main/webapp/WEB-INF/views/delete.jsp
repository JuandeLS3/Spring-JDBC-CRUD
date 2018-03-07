<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Agenda</title>
 </head>
 <body>
 <form action="/show">
  <h1 style="color: green; text-align: center;">Eliminar contacto</h1>
    <p>
    <label>Contactos</label>
     <select name="clave">
       <option value="">Seleccione</option> 
      <c:forEach var="item" items="${list}">
       <option value="/show/${item.name}">${item.name}</option> 
      </c:forEach>
     </select>
    </p>
    <input id="submit" type="submit" value="Eliminar">
 </form>
 </body>
</html>
