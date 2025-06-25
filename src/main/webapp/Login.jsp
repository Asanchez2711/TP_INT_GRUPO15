<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Iniciar sesión</title>
<link rel="stylesheet" type="text/css" href="css/Estilo.css">
</head>
<body>
<jsp:include page="Nav.jsp" />



<form class="FormularioLogin" method="post" action="ServerletHTML">
<h2>Iniciar sesión</h2>
<input type="hidden" name="accion" value="Iniciar"> 
<div class="Form-item">
	<input type="text" name="txtUsuario" id="txtUsuario" class="Input" placeholder="Usuario"/>
</div>

<div class="Form-item">
	<input type="password" name="txtClave" id="txtClave" class="Input" placeholder="Clave"/>
</div>

<div class="Form-item">
			<input type="submit" name="btnIniciar" value="Iniciar Sesión" id="btnIniciar" class="btnIniciar"/>
</div>
<% String error = (String) request.getAttribute("error"); 
		if(error !=null) {
%>
	<p class="error"><%=error %></p>
	
<%} %>

</form>
</body>
</html>