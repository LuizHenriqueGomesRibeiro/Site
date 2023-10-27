package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import CONEXAO.Conexao;
import Model.ModelLogin;

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
		String sql = "SELECT * FROM login WHERE email = '" + modelLogin.getEmail() + "' AND senha = '" + modelLogin.getSenha() + "'";
		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet result = statement.executeQuery();
		while(result.next()) {
			modelLogin.setId(result.getLong("id"));
			modelLogin.setEmail(result.getString("email"));
			modelLogin.setNome(result.getString("nome"));
			modelLogin.setSenha(result.getString("senha"));
		}
		return modelLogin;
	}
	
	public ModelLogin buscarLogin(String login, String senha) throws SQLException{
		String sql = "SELECT * FROM login WHERE login = '" + login + "' AND senha = '" + senha + "'";
		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet result = statement.executeQuery();
		ModelLogin modelLogin = new ModelLogin();
		while(result.next()) {
			modelLogin.setId(result.getLong("id"));
			modelLogin.setEmail(result.getString("email"));
			modelLogin.setNome(result.getString("nome"));
			modelLogin.setSenha(result.getString("senha"));
		}
		return modelLogin;
	}
}
