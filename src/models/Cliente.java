package models;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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
}
