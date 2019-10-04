package helpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {
	private static ConnectionManager instance;
	private Connection conn;
	//private final String csCrmJava = "jdbc:sqlserver://localhost:1433;instance=sqlexpress;databaseName=CrmJava;";
	private final String csCrmJava = "jdbc:sqlserver://localhost\\SQLEXPRESS:1433;databaseName=CrmJava;integratedSecurity=true;";
	
	private ConnectionManager() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			System.out.println("Driver Carregado");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public static ConnectionManager getInstance() {
		if (instance == null) {
			instance = new ConnectionManager();
		}
		return instance;
	}

	public Connection getConnection() throws SQLException {
		if (conn == null || conn.isClosed()) {
			conn = DriverManager.getConnection(csCrmJava);
			System.out.println("Gerada uma nova conex�o");
		} else {
			System.out.println("Reusando uma conex�o existente");
		}
		return conn;
	}
}
