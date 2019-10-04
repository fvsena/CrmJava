package models;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import helpers.ConnectionManager;
import helpers.Sql;

public class Cliente extends Sql {
	public int codigo;
	public String nome;
	public String documento;
	public Date dataNascimento;
	public String genero;
	public List<String> telefones = new ArrayList<String>();
	public Endereco endereco = new Endereco();
	
	public List<Cliente> obterClientes() throws SQLException{
		Cliente c;
		List<Cliente> clientes = new ArrayList<Cliente>();
		ResultSet rs = ExecuteResultSet("sp_ObterClientes");
		while(rs.next()) {
			c = new Cliente();
			c.codigo = rs.getInt("Codigo");
			c.nome = rs.getString("Nome");
			c.genero = rs.getString("Genero");
			c.documento = rs.getString("Documento");
			c.dataNascimento = rs.getDate("DataNascimento");
			clientes.add(c);
		}
		return clientes;
	}
	
	public Cliente gravarCliente(int codigo) {
		Cliente c = new Cliente();
		String sql = "sp_GravarCliente ?, ?, ?, ?, ?";
		try {
			Connection conn = ConnectionManager.getInstance().getConnection();
			CallableStatement statement = conn.prepareCall(sql);
			statement.setString(1, this.nome);
			statement.setString(2, this.genero);
			statement.setString(3, this.documento);
			statement.setDate(4, (java.sql.Date)this.dataNascimento);
			if(codigo > 0) {
				statement.setInt(5, codigo);
			} else {
				statement.setNull(5, codigo);
			}
			
			ResultSet rs = statement.executeQuery();
			while(rs.next()) {
				try {
                    this.codigo = rs.getInt("IdCustomer");
                    for(String telefone : this.telefones) {
                    	//gravarTelefone(telefone);
                    }
                }
                catch (Exception ex) {
                    String erro = rs.getString("ErrorMessage");
                    System.out.println(erro);
                }
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;
	}
	
	
}
