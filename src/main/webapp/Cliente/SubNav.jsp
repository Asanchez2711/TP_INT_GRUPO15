<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/Estilo.css">
</head>
<body>

<nav class="SubNav">
    <ul class="SubNav-Items">
        <li><a href="<%=request.getContextPath()%>/Cliente/InfoPersonal.jsp">Mi perfil</a></li>
        <li><a href="<%=request.getContextPath()%>/Cliente/Cuentas.jsp">Cuentas</a></li>
        <li><a href="<%=request.getContextPath()%>/Cliente/Transferencias.jsp">Transferencias</a></li>
        <li><a href="<%=request.getContextPath()%>/Cliente/Prestamos.jsp">Préstamos</a></li>
    </ul>
</nav>

</body>
</html>