package BRUNA.DAO.LOGIN;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import BRUNA.MODEL.ModelLogin;
import CONEXAO.Conexao;

public class DaoLogin {
private Connection connection;
	
	public DaoLogin() {
		connection = Conexao.getConnection();
	}
	
	public boolean validarLogin(ModelLogin modelLogin) throws SQLException {
		String sql = "SELECT count(1) > 0 AS existe FROM Login WHERE email = ? AND senha = ?";
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, modelLogin.getEmail());
		statement.setString(2, modelLogin.getSenha());
		
		ResultSet result = statement.executeQuery();
		
		result.next();
		
		return result.getBoolean("existe");
	}
	
	public ModelLogin buscarLogin(ModelLogin modelLogin) throws SQLException{
		String sql = "SELECT * FROM login WHERE email = ? AND senha = ?";
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, modelLogin.getEmail());
		statement.setString(2, modelLogin.getSenha());
		
		ResultSet result = statement.executeQuery();
		
		while(result.next()) {
			modelLogin.setId(result.getInt("id"));
			modelLogin.setEmail(result.getString("email"));
			modelLogin.setNome(result.getString("nome"));
			modelLogin.setSenha(result.getString("senha"));
		}
		
		return modelLogin;
	}
}
