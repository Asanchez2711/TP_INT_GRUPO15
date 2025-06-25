<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../css/Estilo.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
    
    <title>Información Personal</title>
    <style>
        .contenedor {
            max-width: 600px;
            margin: 30px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9;
            font-family: Arial, sans-serif;
        }
        
         .contenedor2 {
            max-width: 600px;
            margin: 30px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9;
            font-family: Arial, sans-serif;
        }
        
        .contenedor-padre {
    		display: flex;
    		justify-content: center;
    		gap: 40px; 
    		margin-top: 30px;
    		flex-wrap: wrap; 
		}

		.contenedor, .contenedor2 {
    		width: 300px; 
		}

        .contenedor h2 {
            text-align: center;
            color: #333;
        }
        
        .contenedor2 h2{
        	text-align: center;
            color: #333;
        }

        .datos {
            margin: 10px 0;
            padding: 8px;
            border-bottom: 1px solid #ddd;
        }

        .etiqueta {
            font-weight: bold;
            color: #555;
        }
    </style>
</head>
<body>
   <jsp:include page="Nav.jsp" />
    <jsp:include page="SubNav.jsp" />
<div class="contenedor-padre">
    <div class="contenedor">
        <h2>Datos Personales</h2>
        <div class="datos"><span class="etiqueta">Nombre:</span>  </div>
        <div class="datos"><span class="etiqueta">Apellido:</span> </div>
        <div class="datos"><span class="etiqueta">DNI:</span> </div>
        <div class="datos"><span class="etiqueta">Email:</span> </div>
        <div class="datos"><span class="etiqueta">Nacionalidad:</span> </div>
	</div>
	
	<div class="contenedor2">
        <h2>Datos Bancarios</h2>
        <div class="datos"><span class="etiqueta">Cuenta Bancaria:</span> </div>
        <div class="datos"><span class="etiqueta">Saldo Disponible:</span> </div>
        <div class="datos"><span class="etiqueta">Numeros de Tarjetas:</span> </div>
    </div>
</div>    

</body>
</html>