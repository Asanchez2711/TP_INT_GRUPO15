package Serverlet;

import java.io.IOException;

import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import Entidades.Cliente;
import Entidades.Usuario;
import Negocio.NegocioCliente;
import NegocioImp.NegocioClienteImp;
import Otros.enmTipos;

@WebServlet("/AltaCliente")
public class ServletCliente extends HttpServlet {
    private static final long serialVersionUID = 1L; // Añadir un serialVersionUID

    private NegocioCliente negocio;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1. Obtener los parámetros del formulario
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");
        String dni = request.getParameter("dni");
        String cuil = request.getParameter("cuil");
        String apellido = request.getParameter("apellido");
        String nombre = request.getParameter("nombre");
        String sexo = request.getParameter("sexo"); 
        String nacionalidad = request.getParameter("nacionalidad");
        String fechaNacimientoStr = request.getParameter("fechaNacimiento");
        String provincia = request.getParameter("provincia");
        String localidad = request.getParameter("localidad");
        String direccion = request.getParameter("direccion");
        String mail = request.getParameter("mail");
        String telefono = request.getParameter("telefono");
        // Para el campo 'activo', si no hay un checkbox, asumimos true por defecto.
        // Si hubiera un checkbox, se leería algo como request.getParameter("activo") != null;

        // Log de los parámetros recibidos para depuración
        System.out.println("--- Parámetros recibidos en ServletCliente ---");
        System.out.println("Usuario: " + usuario);
        System.out.println("Password: " + password);
        System.out.println("DNI: " + dni);
        System.out.println("CUIL: " + cuil);
        System.out.println("Apellido: " + apellido);
        System.out.println("Nombre: " + nombre);
        System.out.println("Sexo: " + sexo);
        System.out.println("Nacionalidad: " + nacionalidad);
        System.out.println("Fecha de Nacimiento (String): " + fechaNacimientoStr);
        System.out.println("Provincia: " + provincia);
        System.out.println("Localidad: " + localidad);
        System.out.println("Dirección: " + direccion);
        System.out.println("Mail: " + mail);
        System.out.println("Teléfono: " + telefono);
        System.out.println("----------------------------------------------");

        Cliente cliente = new Cliente();
        try {
        	Usuario usr = new Usuario(0,"","",enmTipos.UsrCliente.valor,true); 
        	cliente.setUsuario(usr);
            cliente.setDni(dni);
            cliente.setCuil(cuil);
            cliente.setApellido(apellido);
            cliente.setNombre(nombre);
            cliente.setSexo(sexo);
            cliente.setNacionalidad(nacionalidad);
            cliente.setFechaAlta(LocalDate.now()); 

            if (fechaNacimientoStr != null && !fechaNacimientoStr.isEmpty()) {
                cliente.setFechaNacimiento(LocalDate.parse(fechaNacimientoStr));
            } else {
                System.err.println("Error: Fecha de Nacimiento es nula o vacía.");
                response.sendRedirect(request.getContextPath() + "/Administrador/Clientes.jsp?mensaje=errorFecha");
            }

            cliente.setProvincia(provincia);
            cliente.setLocalidad(localidad);
            cliente.setDireccion(direccion);
            cliente.setMail(mail);
            cliente.setTelefono(telefono);
            cliente.setActivo(true); 

            negocio = new NegocioClienteImp();
            boolean exito = negocio.registrarCliente(cliente);

            if (exito) {
                response.sendRedirect(request.getContextPath() + "/Administrador/Clientes.jsp?mensaje=ok");
            } else {
                response.sendRedirect(request.getContextPath() + "/Administrador/Clientes.jsp?mensaje=error");
            }
        } catch (Exception e) {
            System.err.println("Error al procesar los datos del cliente en ServletCliente:");
            e.printStackTrace();
            response.sendRedirect(request.getContextPath() + "/Administrador/Clientes.jsp?mensaje=errorProcesamiento");
        }
    }
}