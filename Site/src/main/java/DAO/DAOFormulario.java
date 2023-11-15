package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import CONEXAO.Conexao;
import Model.ModelPergunta;

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
			perguntas.add(modelPergunta);
		}
		return perguntas;
	}
}