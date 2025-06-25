<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Gestión de Cuentas</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/Estilo.css">
</head>
<body>

	<jsp:include page="NavAdministrador.jsp" />
	<jsp:include page="SubNavAdministrador.jsp" />

	<div class="container mt-5">
		<h2 class="mb-4 text-center">Gestión de Cuentas</h2>

		<table class="table table-bordered table-hover text-center">
			<thead class="table-dark">
				<tr>
					<th>ID Cuenta</th>
					<th>DNI Cliente</th>
					<th>Nombre Cliente</th>
					<th>Saldo Actual</th>
					<th>Estado</th>
					<th>Acciones</th>
				</tr>
			</thead>

			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td>

					<button type="button" class="btn btn-warning"
						data-bs-toggle="modal" data-bs-target="#modalEditarCuenta">Editar</button>

					<div class="modal fade" id="modalEditarCuenta" tabindex="-1"
						aria-labelledby="labelEditarCuenta" aria-hidden="true">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="labelEditarCuenta">Editar Cuenta</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Cerrar"></button>
								</div>
								<div class="modal-body">
								FORMULARIO P EDIT
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-warning"
										data-bs-dismiss="modal">Guardar Cambios</button>
								</div>
							</div>
						</div>
					</div>

					<button type="button" class="btn btn-danger" data-bs-toggle="modal"
						data-bs-target="#modalBajaCuenta">Dar Baja</button>

					<div class="modal fade" id="modalBajaCuenta" tabindex="-1"
						aria-labelledby="labelBajaCuenta" aria-hidden="true">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="labelBajaCuenta">Dar de Baja Cuenta</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Cerrar"></button>
								</div>
								<div class="modal-body">
									¿EstA seguro que desea dar de baja esta cuenta?
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-danger"
										data-bs-dismiss="modal">Confirmar Baja</button>
								</div>
							</div>
						</div>
					</div>

				</td>
			</tr>

			<tbody>
				<tr>
					<td colspan="6">No hay cuentas para mostrar.</td>
				</tr>
			</tbody>
		</table>

		<!-- Boton nueva cuenta -->
		<button type="button" class="btn btn-success" data-bs-toggle="modal"
			data-bs-target="#modalAgregarCuenta">Agregar Cuenta</button>

		<!-- Modal Agregar Cuenta -->
		<div class="modal fade" id="modalAgregarCuenta" tabindex="-1"
			aria-labelledby="labelAgregarCuenta" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="labelAgregarCuenta">Agregar Nueva Cuenta</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Cerrar"></button>
					</div>
					<div class="modal-body">
						FORM CREACION DE CUENTA
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Cerrar</button>
					</div>
				</div>
			</div>
		</div>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js">
	</script>
</body>
</html>

