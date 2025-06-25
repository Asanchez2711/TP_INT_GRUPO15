<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../css/Estilo.css">
<title>Transferencias</title>
</head>
<body>
<jsp:include page="Nav.jsp" />
<jsp:include page="SubNav.jsp" />


<div class="Container-transferencias">
<h2>Transferencia a nuevo destinatario</h2>


<form class="FormularioTransferencia" method="post" action="${pageContext.request.contextPath}/ServerletHTML">
<div class="FormItem">
<label for="Cuenta">Seleccionar cuenta origen</label>
<select name="Cuenta" id="Cuenta">
	<option value="1">CA $ N° 12313</option>
	<option value="2">CA $ N° 22331</option>
</select>
</div>

<div class="FormItem">
<label for="Monto">Monto a transferir</label>
<input type="text" name="txtMonto" id="txtMonto"/>
</div>

<div class="FormItem">
<label for="CBU">CBU</label>
<input type="text" name="txtCbu" id="txtCbu"/>
</div>

<div class="FormItem">
<label for="Descripción">Descripción</label>
<input type="text" name="txtDescripcion" id="txtDescripcion"/>
</div>

<div class="FormItem">

<input type="submit" name="btnTransferir" value="Transferir" class="btnTransferir"/>
</div>

<%-- Control de errores --%>
<% String error = (String) request.getAttribute("error"); 
		if(error !=null) {
%>
	<p class="error"><%=error %></p>
	
<%} %>
</form>





</div>
</body>
</html>