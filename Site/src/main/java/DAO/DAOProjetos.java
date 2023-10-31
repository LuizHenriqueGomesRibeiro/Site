package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import CONEXAO.Conexao;
import Model.ModelProjeto;

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
	
	public ModelProjeto buscarProjeto(String sql) throws SQLException {
		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet resultado = statement.executeQuery();
		return resultadoBusca(resultado);
	}
	
	public ModelProjeto resultadoBusca(ResultSet resultado) throws SQLException {
		ModelProjeto modelProjeto = new ModelProjeto();
		while(resultado.next()) {
			setModelProjeto(resultado, modelProjeto);
		}
		return modelProjeto;
	}
	
	public List<ModelProjeto> listarProjetos(String sql) throws SQLException{
		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet resultado = statement.executeQuery();
		return resultadoListagem(resultado);
	}
	
	public List<ModelProjeto> resultadoListagem(ResultSet resultado) throws SQLException{
		List<ModelProjeto> retorno = new ArrayList<ModelProjeto>();
		while(resultado.next()) {
			ModelProjeto modelProjeto = new ModelProjeto();
			retorno.add(setModelProjeto(resultado, modelProjeto));
		}
		return retorno;
	}
	
	public ModelProjeto setModelProjeto(ResultSet resultado, ModelProjeto modelProjeto) throws SQLException {	
		modelProjeto.setFotoprojeto(resultado.getString("fotoprojeto"));
		modelProjeto.setId(resultado.getLong("id"));
		modelProjeto.setFoto1(resultado.getString("foto1"));
		modelProjeto.setFoto2(resultado.getString("foto2"));
		modelProjeto.setFoto3(resultado.getString("foto3"));
		modelProjeto.setFoto4(resultado.getString("foto4"));
		modelProjeto.setFoto5(resultado.getString("foto5"));
		modelProjeto.setFoto6(resultado.getString("foto6"));
		modelProjeto.setFoto7(resultado.getString("foto7"));
		modelProjeto.setFoto8(resultado.getString("foto8"));
		modelProjeto.setFoto9(resultado.getString("foto9"));
		return modelProjeto;
	}
	
	public void atualizarProjeto(String sql) throws SQLException {
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.executeUpdate();
		connection.commit();
	}
	
	public void excluirProjeto(String sql) throws SQLException {
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.executeUpdate();
		connection.commit();
	}
}