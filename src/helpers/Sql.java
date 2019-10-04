package helpers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public abstract class Sql {
	
	protected int ExecuteCommand(String sql) throws SQLException {
		try {
			int linesAffected = 0;
			Connection conn = ConnectionManager.getInstance().getConnection();
			PreparedStatement statement = conn.prepareStatement(sql);
			linesAffected = statement.executeUpdate();
			return linesAffected;
		} catch (Exception ex) {
			throw ex;
		}
	}
	
	protected ResultSet ExecuteResultSet(String sql) throws SQLException {
		try {
			Connection conn = ConnectionManager.getInstance().getConnection();
			PreparedStatement statement = conn.prepareStatement(sql);
			ResultSet rs = statement.executeQuery();
			return rs;
		} catch (Exception ex) {
			throw ex;
		}
	}
}
