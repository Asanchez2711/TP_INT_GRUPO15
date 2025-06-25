package Negocio;

import Entidades.Cliente;
import Entidades.Usuario;

public interface NegocioCliente {

	boolean registrarCliente(Cliente cliente);
	
	Usuario obtieneUsuario(String usuario, String pass);

}
