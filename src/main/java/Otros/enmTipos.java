package Otros;

public enum enmTipos {
	// 	Movimientos
    MovAltaCuenta(1), 
    MovAltaPrestamo(2),
    MovPagoPrestamo(3),
    MovTransferencia(4),

    // Cuentas
	CtaCajaAhorro(1),
	CtaCuentaCorriente(2),

	
	// Usuarios
    UsrAdministrador(1), 
    UsrCliente(2);
    
    public final int valor;

	enmTipos(int valor) { 
        this.valor = valor;
    }
}
