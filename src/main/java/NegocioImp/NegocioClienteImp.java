package NegocioImp;

import Dao.DaoCliente;
import Entidades.Cliente;
import Entidades.Usuario;
import Negocio.NegocioCliente;

public class NegocioClienteImp implements NegocioCliente {

	private DaoCliente daoC = new DaoCliente();
    public boolean registrarCliente(Cliente cliente) {
        return daoC.agregarCliente(cliente);
    }

	@Override
	public Usuario obtieneUsuario(String usuario, String pass) {
		return daoC.login(usuario, pass);
	}
}
