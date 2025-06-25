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

<div class="Container-MisPrestamos">

<div class="Informacion-Prestamo">
<div class="cabecera-prestamo">
	<p>Tipo prestamo: <p>
	</div>
  <div class="monto-solicitado">
      <p class="monto-total">Monto total del préstamo: $</p>
      <p class="cuota">Importe cuota: $ </p>
      <p>Cuota N°: </p>
    </div>
    <div class="detalle-prestamo">
    <div class="fecha-solicitado">
      <p>Fecha solicitado: </p>
    </div>
	</div>
  </div>


<table class="tabla-prestamos">
  <thead>
    <tr>
      <th>Cuota</th>
      <th>Fecha</th>
      <th>Monto</th>
      <th>Estado</th>
    </tr>
  </thead>
  <tbody>
</table>
</div>

</body>
</html>