<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro</title>
</head>
<body>
<jsp:include page="Nav.jsp" />

<div align="center">
<form method="post" action="procesarRegistro.jsp">
    <h2>Registrarse</h2>

    <table>
        <tr>
            <td><label for="usuario">Usuario:</label></td>
            <td><input type="text" name="usuario" id="usuario" placeholder="Usuario" size="25" required /></td>
            <td><label for="dni">DNI:</label></td>
            <td><input type="text" name="dni" id="dni" placeholder="DNI" size="25" required /></td>
        </tr><tr><td colspan="4"><br></td></tr>

        <tr>
            <td><label for="cuil">CUIL:</label></td>
            <td><input type="text" name="cuil" id="cuil" placeholder="CUIL" size="25" required /></td>
            <td><label for="nombre">Nombre:</label></td>
            <td><input type="text" name="nombre" id="nombre" placeholder="Nombre" size="25" required /></td>
        </tr><tr><td colspan="4"><br></td></tr>

        <tr>
            <td><label for="apellido">Apellido:</label></td>
            <td><input type="text" name="apellido" id="apellido" placeholder="Apellido" size="25" required /></td>
            <td><label for="sexo">Sexo:</label></td>
            <td>
                <select name="sexo" id="sexo" size="1" required>
                    <option value="" disabled selected>Seleccione sexo</option>
                    <!-- Opciones para cargar de la base de datos -->
                </select>
            </td>
        </tr><tr><td colspan="4"><br></td></tr>

        <tr>
            <td><label for="nacionalidad">Nacionalidad:</label></td>
            <td>
                <select name="nacionalidad" id="nacionalidad" size="1" required>
                    <option value="" disabled selected>Seleccione nacionalidad</option>
                    <!-- Opciones para cargar de la base de datos -->
                </select>
            </td>
            <td><label for="fechaNacimiento">Fecha de nacimiento:</label></td>
            <td><input type="date" name="fechaNacimiento" id="fechaNacimiento" required /></td>
        </tr><tr><td colspan="4"><br></td></tr>

        <tr>
            <td><label for="direccion">Dirección:</label></td>
            <td><input type="text" name="direccion" id="direccion" placeholder="Dirección" size="25" required /></td>
            <td><label for="localidad">Localidad:</label></td>
            <td>
                <select name="localidad" id="localidad" size="1" required>
                    <option value="" disabled selected>Seleccione localidad</option>
                    <!-- Opciones para cargar de la base de datos -->
                </select>
            </td>
        </tr><tr><td colspan="4"><br></td></tr>

        <tr>
            <td><label for="provincia">Provincia:</label></td>
            <td>
                <select name="provincia" id="provincia" size="1" required>
                    <option value="" disabled selected>Seleccione provincia</option>
                    <!-- Opciones para cargar de la base de datos -->
                </select>
            </td>
            <td><label for="email">Correo electrónico:</label></td>
            <td><input type="email" name="email" id="email" placeholder="Correo electrónico" size="25" required /></td>
        </tr><tr><td colspan="4"><br></td></tr>

        <tr>
            <td><label for="telefono">Teléfono:</label></td>
            <td><input type="tel" name="telefono" id="telefono" placeholder="Teléfono" size="25" required /></td>
            <td><label for="password">Contraseña:</label></td>
            <td><input type="password" name="password" id="password" placeholder="Contraseña" size="25" required /></td>
        </tr><tr><td colspan="4"><br></td></tr>

        <tr>
            <td><label for="confirmPassword">Confirmar contraseña:</label></td>
            <td><input type="password" name="confirmPassword" id="confirmPassword" placeholder="Confirmar contraseña" size="25" required /></td>
            <td></td>
            <td></td>
        </tr><tr><td colspan="4"><br></td></tr>

        <tr>
            <td colspan="4" align="center">
                <input type="submit" name="btnRegistrarse" value="Registrarse" />
            </td>
        </tr>
    </table>

    <p style="text-align:center; margin-top:10px;">
        ¿Ya tenés cuenta? <a href="Login.jsp">Iniciar sesión</a>
    </p>

    <p style="color:red; text-align:center;" id="errorMensaje"></p>
</form>
</div>

</body>
</html>
