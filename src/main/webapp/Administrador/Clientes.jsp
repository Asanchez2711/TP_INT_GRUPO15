<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Listado de Clientes</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="../css/Estilo.css">
</head>
<body>
	<jsp:include page="NavAdministrador.jsp" />
	<jsp:include page="SubNavAdministrador.jsp" />

	<div class="container mt-4">
		<h2 class="text-center">Listado de Clientes</h2>

		<%
			String mensaje = request.getParameter("mensaje");
			if (mensaje != null) {
		%>
			<div class="alert <%= mensaje.equals("ok") ? "alert-success" : "alert-danger" %> alert-dismissible fade show" role="alert">
				<%= mensaje.equals("ok") ? "Cliente agregado correctamente." : "Ocurrió un error al agregar el cliente." %>
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Cerrar"></button>
			</div>
		<%
			}
		%>

		<table id="table_id" class="table table-striped">
			<thead class="table-dark">
				<tr>
					<th>Nombre y Apellido</th>
					<th>Dirección</th>
					<th>DNI</th>
					<th>Activo</th>
					<th>Acciones</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Ezequiel Lopez</td>
					<td>Av. Siempre Viva 123</td>
					<td>40123456</td>
					<td><span class="badge bg-success">Sí</span></td>
					<td><a href="Prestamos.jsp" class="btn btn-primary">Ver Detalle</a></td>
				</tr>
				<tr>
					<td>Juan Perez</td>
					<td>Calle Falsa 456</td>
					<td>38965432</td>
					<td><span class="badge bg-danger">No</span></td>
					<td><a href="Prestamos.jsp" class="btn btn-primary">Ver Detalle</a></td>
				</tr>
				<tr>
					<td>Ana Gomez</td>
					<td>Av. Libertador 789</td>
					<td>42567890</td>
					<td><span class="badge bg-success">Sí</span></td>
					<td><a href="Prestamos.jsp" class="btn btn-primary">Ver Detalle</a></td>
				</tr>
			</tbody>
		</table>

		<button type="button" class="btn btn-success" data-bs-toggle="modal"
			data-bs-target="#modalAgregarCliente">Agregar</button>

		<div class="modal fade" id="modalAgregarCliente" tabindex="-1"
			aria-labelledby="labelAgregarCliente" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="labelAgregarCliente">Agregar Nuevo Cliente</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Cerrar"></button>
					</div>
					<div class="modal-body">
						<form method="post" action="<%= request.getContextPath() %>/AltaCliente">
							<div class="row">
								<div class="col-md-6 mb-3">
									<label>Usuario:</label>
									<input type="text" class="form-control" name="usuario" required>
								</div>
								<div class="col-md-6 mb-3">
									<label>Contraseña:</label>
									<input type="password" class="form-control" name="password" required>
								</div>
								<div class="col-md-6 mb-3">
									<label>DNI:</label>
									<input type="text" class="form-control" name="dni" required>
								</div>
								<div class="col-md-6 mb-3">
									<label>CUIL:</label>
									<input type="text" class="form-control" name="cuil" required>
								</div>
								<div class="col-md-6 mb-3">
									<label>Apellido:</label>
									<input type="text" class="form-control" name="apellido" required>
								</div>
								<div class="col-md-6 mb-3">
									<label>Nombre:</label>
									<input type="text" class="form-control" name="nombre" required>
								</div>
								<div class="col-md-6 mb-3">
									<label>Sexo:</label>
									<select class="form-control" name="sexo">
										<option value="Masculino">Masculino</option>
										<option value="Femenino">Femenino</option>
										<option value="Otro">Otro</option>
									</select>
								</div>
								<div class="col-md-6 mb-3">
									<label>Nacionalidad:</label>
									<input type="text" class="form-control" name="nacionalidad" required>
								</div>
								<div class="col-md-6 mb-3">
									<label>Fecha de Nacimiento:</label>
									<input type="date" class="form-control" name="fechaNacimiento" required>
								</div>
								<div class="col-md-6 mb-3">
									<label>Provincia:</label>
									<input type="text" class="form-control" name="provincia" required>
								</div>
								<div class="col-md-6 mb-3">
									<label>Localidad:</label>
									<input type="text" class="form-control" name="localidad" required>
								</div>
								<div class="col-md-6 mb-3">
									<label>Dirección:</label>
									<input type="text" class="form-control" name="direccion" required>
								</div>
								<div class="col-md-6 mb-3">
									<label>Correo electrónico:</label>
									<input type="email" class="form-control" name="mail" required>
								</div>
								<div class="col-md-6 mb-3">
									<label>Teléfono:</label>
									<input type="text" class="form-control" name="telefono" required>
								</div>
							</div>
							<div class="text-end">
								<button type="submit" class="btn btn-success">Guardar Cliente</button>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
					</div>
				</div>
			</div>
		</div>

	</div>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#table_id').DataTable({
				"search": {
					"caseInsensitive": true
				}
			});
		});
	</script>
</body>
</html>