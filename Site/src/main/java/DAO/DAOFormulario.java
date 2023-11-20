package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import CONEXAO.Conexao;
import Model.ModelPergunta;
import jakarta.servlet.jsp.jstl.sql.Result;

public class DAOFormulario {
	private Connection connection;
	
	public DAOFormulario() {
		connection = Conexao.getConnection();
	}
	
	public void persistirPergunta(String sql) throws Exception {
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.execute();
		connection.commit();
	}
	
	public List<ModelPergunta> listarPerguntas(String sql) throws Exception{
		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet resultado = statement.executeQuery();
		List<ModelPergunta> perguntas = new ArrayList<ModelPergunta>();
		while(resultado.next()) {
			ModelPergunta modelPergunta = new ModelPergunta();
			modelPergunta.setId(resultado.getLong("id"));
			modelPergunta.setNome(resultado.getString("nome"));
			modelPergunta.setEmail(resultado.getString("email"));
			modelPergunta.setMensagem(resultado.getString("mensagem"));
			modelPergunta.setData(resultado.getString("data"));
			perguntas.add(modelPergunta);
		}
		return perguntas;
	}
	
	public ModelPergunta buscarPergunta(String sql) throws SQLException {
		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet resultado = statement.executeQuery();
		ModelPergunta modelPergunta = new ModelPergunta();
		while(resultado.next()) {
			modelPergunta.setId(resultado.getLong("id"));
			modelPergunta.setNome(resultado.getString("nome"));
			modelPergunta.setEmail(resultado.getString("email"));
			modelPergunta.setMensagem(resultado.getString("mensagem"));
			modelPergunta.setData(resultado.getString("data"));
		}
		return modelPergunta;
	}
}