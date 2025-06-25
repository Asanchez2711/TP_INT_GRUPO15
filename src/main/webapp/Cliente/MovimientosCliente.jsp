<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../css/Estilo.css">
<title>Mis Movimientos</title>
</head>
<body>
<jsp:include page="Nav.jsp" />
<jsp:include page="SubNav.jsp" />
<div class="Container-movimientos">
<h2>Movimientos</h2>
<table class="tabla-movimientos">
  <thead>
    <tr>
      <th>Fecha</th>
      <th>Descripción</th>
      <th>Tipo</th>
      <th>Monto</th>
    </tr>
  </thead>
  <tbody>
    
      <tr>
        <td>16/06/25</td>
        <td>PAGO C/ DEBITO</td>
        <td>Transferencia</td>
        <td>5600</td>
      </tr>
    
  </tbody>
   
  </table>
  <a href="Cuentas.jsp" class="btn-volver">Volver</a>
 </div>
</body>
</html>