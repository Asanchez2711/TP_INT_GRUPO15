package Otros;

import Entidades.Cliente;
import Entidades.Usuario;
import Negocio.NegocioCliente;
import NegocioImp.NegocioClienteImp;

import java.time.LocalDate;

public class Principal {

	
	//Main nomas para probar el negocio
	public static void main(String[] args) {
		
//		Usuario usr = new Usuario(0, "asg", "Roque123", enmTipos.UsrCliente.valor, true);
//		
//		Cliente clt = new Cliente(usr, 0, "4541", "51541", "Sa", "Ja", "Masculino", "Argentino", LocalDate.parse("1997-05-20"), LocalDate.now(),"Buenos aires", "Tigre", "Italia1111", "ej", "12", true);
//		
		NegocioCliente ng = new NegocioClienteImp();
//		
//		boolean a = ng.registrarCliente(clt);
//		
//		System.out.println(a);
		
		Usuario testcst = ng.obtieneUsuario("asg", "Roque123");
		
		System.out.println(testcst);
		

	}	
		

}
