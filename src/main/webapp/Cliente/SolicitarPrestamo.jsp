<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../css/Estilo.css">
<title>Préstamos</title>
</head>
<body>
<jsp:include page="Nav.jsp" />
<jsp:include page="SubNav.jsp" />

<div class="Container-Prestamos">
<h2> Préstamos</h2>
    <ul class="Prestamos-Items">
        <li><a href="Prestamos.jsp">Mis préstamos</a></li>
        <li><a href="SolicitarPrestamo.jsp">Solicitar préstamo</a></li>
    </ul>
</div>

<h2>Solicitud de préstamo</h2>

<div class="Container-solicitud">



<form class="Formulario-Prestamos" method="post" action="${pageContext.request.contextPath}/ServerletHTML">

<div class="FormItem">
<label for="MontoSolicitado">Monto:</label>
<input type="text" name="txtMonto" id="txtMonto" placeholder="Monto máximo 1000000"/>
</div>

<div class="FormItem">
<label for="Plazo">Plazo: </label>
<select name="Plazo" id="Plazo">
	<option value="24">24</option>
	<option value="18">18</option>
	<option value="12">12</option>
	<option value="6">6</option>
</select>
</div>
<div class="FormItem">
<label for="Cuenta">Seleccionar cuenta a depósitar</label>
<select name="Cuenta" id="Cuenta">
	<option value="1">CA $ N° 12313</option>
	<option value="2">CA $ N° 22331</option>
</select>
</div>

<div class="FormItem">
<label for="MontoCuota">Cuota a pagar:</label>
</div>

<div class="FormItem">

<input type="submit" name="btnSolicitar" value="Solicitar" class="btnSolicitar"/>
</div>
</form>

<%-- Control de errores --%>
<% String error = (String) request.getAttribute("error"); 
		if(error !=null) {
%>
	<p class="error"><%=error %></p>
	
<%} %>

</div>

</body>
</html>