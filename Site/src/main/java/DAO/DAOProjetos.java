package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import CONEXAO.Conexao;

public class DAOProjetos {
private Connection connection;
	
	public DAOProjetos() {
		connection = Conexao.getConnection();
	}
	
	public void persistirProjeto(String sql) throws SQLException {
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.execute();
		connection.commit();
	}
}