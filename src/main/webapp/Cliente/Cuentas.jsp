<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../css/Estilo.css">
<title>Mis cuentas</title>
</head>
<body>
<jsp:include page="Nav.jsp" />
<jsp:include page="SubNav.jsp" />

<div class="container-cuentas">
<h2>Cuentas</h2>

	<div class="Cuentas">
		<ul class="Cuentas-items">
		<li>Caja de ahorro en pesos</li>
		<li>121-223551/2</li>
		<li>Moneda: Pesos</li>
		<li>$10.000</li>
		<li>CBU: 00011122333112223</li>	
		</ul>
		<a href="MovimientosCliente.jsp">Ver movimientos</a>
	</div>
	
	<div class="Cuentas">
		<ul class="Cuentas-items">
		<li>Cuenta corriente en pesos</li>
		<li>121-20262/8</li>
		<li>Moneda: Pesos</li>
		<li>$10.000</li>
		<li>CBU: 11120033321122233321</li>	
		</ul>
		<a href="MovimientosCliente.jsp">Ver movimientos</a>
	</div>


</div>
</body>
</html>