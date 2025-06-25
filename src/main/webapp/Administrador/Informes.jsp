<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Informe Estadístico Bancario</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/Estilo.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>

<jsp:include page="NavAdministrador.jsp" />
<jsp:include page="SubNavAdministrador.jsp" />

<div class="container mt-5">

    <h2 class="text-center mb-5">📊 Informe Estadístico Bancario</h2>

    <div class="row text-center mb-4">
        <div class="col-md-4">
            <div class="alert alert-info">
                 <h4 class="mt-2">1.200 operaciones</h4>
                <p>Total de operaciones realizadas</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="alert alert-success">
                 <h4 class="mt-2">$5.200.000</h4>
                <p>Depositados</p>
                <hr>
                <h5>$3.750.000</h5>
                <p>Extraídos</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="alert alert-warning">
                <h4 class="mt-2">35 Clientes</h4>
                <p>Cliente Activos Totales</p>
            </div>
        </div>
    </div>

    <div class="row text-center mb-5">
        <div class="col-md-6">
            <div class="alert alert-primary">
                 <h4 class="mt-2">50</h4>
                <p>Cuentas nuevas abiertas</p>
            </div>
        </div>
        <div class="col-md-6">
            <div class="alert alert-danger">
                 <h4 class="mt-2">10</h4>
                <p>Cuentas cerradas</p>
            </div>
        </div>
    </div>

    

</div>



</body>
</html>