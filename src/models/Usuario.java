package models;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import helpers.ConnectionManager;

public class Usuario {
	public String nome;
	public String login;
	public String senha;
	public int codigo;
	
	public Usuario (String login, String senha) {
		this.login = login;
		this.senha = senha;
	}
	
	public boolean validarLogin() {
		boolean valido = false;
		if (this.login != null && !this.login.isEmpty()) {
			String sql = "sp_ValidarLogin ?, ?";
			try {
				Connection conn = ConnectionManager.getInstance().getConnection();
				CallableStatement statement = conn.prepareCall(sql);
				statement.setString(1, this.login);
				statement.setString(2, this.senha);
				ResultSet rs = statement.executeQuery();
				while(rs.next()) {
					codigo = rs.getInt("IdAgent");
					valido = true;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return valido;
	}
}
