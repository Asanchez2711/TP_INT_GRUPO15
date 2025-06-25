package Dao;

import java.sql.CallableStatement;
import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Date;
import Entidades.Cliente;
import Entidades.Usuario;
import Otros.enmTipos;

public class DaoCliente {

	private Connection con;

	public boolean agregarCliente(Cliente cliente) {

		boolean resultado = false;

		CallableStatement stmt = null;

		try {
			this.con = Conexion.getConexion();
			this.con.setAutoCommit(false);

			stmt = this.con.prepareCall("{ call abmClienteAlta(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) }");

			stmt.setString(1, cliente.getUsuario().getUsuario());
			stmt.setString(2, cliente.getUsuario().getPass());
			stmt.setString(3, cliente.getDni());
			stmt.setString(4, cliente.getCuil());
			stmt.setString(5, cliente.getApellido());
			stmt.setString(6, cliente.getNombre());
			stmt.setString(7, cliente.getSexo());
			stmt.setString(8, cliente.getNacionalidad());
			stmt.setDate(9, Date.valueOf(cliente.getFechaAlta()));
			stmt.setDate(10, Date.valueOf(cliente.getFechaNacimiento()));
			stmt.setString(11, cliente.getProvincia());
			stmt.setString(12, cliente.getLocalidad());
			stmt.setString(13, cliente.getDireccion());
			stmt.setString(14, cliente.getMail());
			stmt.setString(15, cliente.getTelefono());
			stmt.setBoolean(16, cliente.isActivo());

			stmt.execute();

			con.commit();
			resultado = true;

		} catch (Exception e) {

			try {
				if (this.con != null)
					this.con.rollback();
			} catch (SQLException rollbackEx) {
				rollbackEx.printStackTrace();
			}
			System.out.println(e.getMessage());
			resultado = false;
		} finally {
			try {
				if (stmt != null)
					stmt.close();
				if (this.con != null)
					this.con.setAutoCommit(true);
			} catch (SQLException closeEx) {
				closeEx.printStackTrace();
			}
		}

		return resultado;
	}

	public Usuario login(String usuario, String clave) {
		Usuario u = new Usuario();

		CallableStatement stmt = null;

		try {

			this.con = Conexion.getConexion();
			System.out.println("Conectado. Buscando usuario: " + usuario + ", clave: " + clave);

			stmt = this.con.prepareCall("{ call consultaUsuario_UsrPass(?,?,?) }");

			stmt.setString(1, usuario);
			stmt.setString(2, clave);
			stmt.setBoolean(3, true);

			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				u.setId(rs.getInt("ID"));
				u.setUsuario(rs.getString("Usuario"));
				u.setPass(rs.getString("Pass"));
				u.setTipoUsuario(enmTipos.UsrCliente.valor);
				u.setActivoOK(rs.getBoolean("ActivoOK"));
			}

		} catch (Exception e) {

			System.out.println(e.getMessage());
		} finally {
			try {
				if (stmt != null)
					stmt.close();
			} catch (SQLException closeEx) {
				closeEx.printStackTrace();
			}
		}

		return u;
	}
}