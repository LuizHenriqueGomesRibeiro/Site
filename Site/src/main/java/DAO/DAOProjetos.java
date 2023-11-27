package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import CONEXAO.Conexao;
import Model.ModelProjeto;
import SQL.SQL;

public class DAOProjetos {
	private Connection connection;
	DaoLogin daologin = new DaoLogin();
	SQL sql = new SQL();
	
	public DAOProjetos() {
		connection = Conexao.getConnection();
	}
	
	public void persistirProjeto(String sql) throws SQLException {
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.execute();
		connection.commit();
	}
	
	public List<Boolean> alternarVerificarExistenciaDeProjeto() throws SQLException{
		ArrayList<Boolean> booleanos = new ArrayList<Boolean>();
		for(int p = 1; p < 10; p++) {
			if(verificarExistenciaDeProjeto(sql.buscaProjetoPorRanking(p))){
				booleanos.add(true);
			}else{
				booleanos.add(false);
			}
		}
		return booleanos;
	}
	
	
	public ModelProjeto buscarProjeto(String sql) throws Exception {
		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet resultado = statement.executeQuery();
		return resultadoBusca(resultado);
	}
	
	public boolean verificarExistenciaDeProjeto(String sql) throws SQLException {
		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet resultado = statement.executeQuery();
		if(resultado.next()) {
			return true;
		}else {
			return false;
		}
	}
	
	public ModelProjeto resultadoBusca(ResultSet resultado) throws Exception {
		ModelProjeto modelProjeto = new ModelProjeto();
		while(resultado.next()) {
			setModelProjeto(resultado, modelProjeto);
		}
		return modelProjeto;
	}
	
	public List<ModelProjeto> listarProjetos(String sql) throws Exception{
		PreparedStatement statement = connection.prepareStatement(sql);
		ResultSet resultado = statement.executeQuery();
		return resultadoListagem(resultado);
	}
	
	public List<ModelProjeto> resultadoListagem(ResultSet resultado) throws Exception{
		List<ModelProjeto> retorno = new ArrayList<ModelProjeto>();
		while(resultado.next()) {
			ModelProjeto modelProjeto = new ModelProjeto();
			retorno.add(setModelProjeto(resultado, modelProjeto));
		}
		return retorno;
	}
	
	public ModelProjeto setModelProjeto(ResultSet resultado, ModelProjeto modelProjeto) throws Exception {	
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
		modelProjeto.setRanking(resultado.getInt("ranking"));
		modelProjeto.setNome(resultado.getString("nome"));
		modelProjeto.setSobre(resultado.getString("sobre"));
		modelProjeto.setLogin_pai_id(daologin.buscarLogin(sql.buscaDeLoginPorId(resultado.getLong("login_pai_id"))));
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