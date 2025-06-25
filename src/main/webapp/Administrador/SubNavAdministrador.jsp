<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/Estilo.css">
<title>Submenu Administrador</title>
</head>
<body>
<nav class="SubNav">
    <ul class="SubNav-Items">
        <!-- ABML Clientes -->
        <li><a href="<%=request.getContextPath()%>/Administrador/Clientes.jsp">Clientes</a></li>

        <!-- ABML Usuarios -->
        <li><a href="<%=request.getContextPath()%>/Administrador/Usuarios.jsp">Usuarios</a></li>
        
        <!-- ABML Cuentas -->
        <li><a href="<%=request.getContextPath()%>/Administrador/Cuentas.jsp">Cuentas</a></li>
        <!-- Autorización de préstamos -->
        <li><a href="<%=request.getContextPath()%>/Administrador/Prestamos.jsp">Prestamos</a></li>
        
        <!-- Informes / Reportes  -->
        <li><a href="<%=request.getContextPath()%>/Administrador/Informes.jsp">Informes/Reportes</a></li>
    </ul>
</nav>
</body>
</html>
