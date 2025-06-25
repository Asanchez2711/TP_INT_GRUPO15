package Entidades;

public class Usuario {
	private int id;
	private String usuario;
	private String pass;
	private int tipoUsuario;
	private boolean activoOK;

	public Usuario() {}

	public Usuario(int id, String usuario, String pass, int tipoUsuario, boolean activoOK) {
		super();
		this.id = id;
		this.usuario = usuario;
		this.pass = pass;
		this.tipoUsuario = tipoUsuario;
		this.activoOK = activoOK;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public int getTipoUsuario() {
		return tipoUsuario;
	}

	public void setTipoUsuario(int tipoUsuario) {
		this.tipoUsuario = tipoUsuario;
	}

	public boolean isActivoOK() {
		return activoOK;
	}

	public void setActivoOK(boolean activoOK) {
		this.activoOK = activoOK;
	}

	@Override
	public String toString() {
		return "Usuario [id=" + id + ", usuario=" + usuario + ", pass=" + pass + ", tipoUsuario=" + tipoUsuario
				+ ", activoOK=" + activoOK + "]";
	}

}
