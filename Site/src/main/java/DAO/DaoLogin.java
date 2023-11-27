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
		String sql = "SELECT count(1) > 0 AS existe FROM Login WHERE email = '" + modelLogin.getEmail() + "' AND senha = '" + modelLogin.getSenha() + "'";
		PreparedStatement statement = connection.prepareStatement(sql);
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
	
	public ModelLogin buscarLogin(Long id) throws SQLException{
		String sql = "SELECT * FROM login WHERE id = " + id;
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
	
	public void atualizarLogin(String sql) throws Exception {
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.executeUpdate();
		connection.commit();
	}
}
