package SQL;

import Model.ModelProjeto;

public class SQL {
	public String persistenciaProjeto(ModelProjeto modelProjeto) {
		String sql = "INSERT INTO projeto(ranking, nome, login_pai_id, fotoprojeto, extensaofotoprojeto, foto1, extensaofoto1, foto2, extensaofoto2, foto3, extensaofoto3, " +
				"foto4, extensaofoto4, foto5, extensaofoto5, foto6, extensaofoto6, foto7, extensaofoto7, foto8, extensaofoto8, foto9, extensaofoto9) VALUES ("  
			+ modelProjeto.getRanking() 
			+ ", '" + modelProjeto.getNome() 
			+ "', '" + modelProjeto.getLogin_pai_id().getId() 
			+ "', '" + modelProjeto.getFotoprojeto() 
			+ "', '" + modelProjeto.getExtensaofotoprojeto()  
			+ "', '" + modelProjeto.getFoto1() 
			+ "', '" + modelProjeto.getExtensaofoto1() 
			+ "', '" + modelProjeto.getFoto2() 
			+ "', '" + modelProjeto.getExtensaofoto2() 
			+ "', '" + modelProjeto.getFoto3() 
			+ "', '" + modelProjeto.getExtensaofoto3() 
			+ "', '" + modelProjeto.getFoto4() 
			+ "', '" + modelProjeto.getExtensaofoto4() 
			+ "', '" + modelProjeto.getFoto5() 
			+ "', '" + modelProjeto.getExtensaofoto5() 
			+ "', '" + modelProjeto.getFoto6() 
			+ "', '" + modelProjeto.getExtensaofoto6() 
			+ "', '" + modelProjeto.getFoto7() 
			+ "', '" + modelProjeto.getExtensaofoto7() 
			+ "', '" + modelProjeto.getFoto8() 
			+ "', '" + modelProjeto.getExtensaofoto8() 
			+ "', '" + modelProjeto.getFoto9() 
			+ "', '" + modelProjeto.getExtensaofoto9() 
			+ "')";
		return sql;
	}
	// posteriormente: colocar ranking em todas as atualizações (ou criar uma atualização somente para as variaveis globais);
	public String atualizacaoFotoProjeto(ModelProjeto modelProjeto) {
		String sql = "UPDATE projeto SET nome = '" + modelProjeto.getNome() + "', " + 
		"login_pai_id = " + modelProjeto.getLogin_pai_id().getId() + ", " + 
		"fotoprojeto = '" + modelProjeto.getFotoprojeto() + "', " + 
		"extensaofotoprojeto = '" + modelProjeto.getExtensaofotoprojeto() + "'"; 
		return sql;
	}
	
	public String atualizacaoFoto1(ModelProjeto modelProjeto) {
		String sql = "UPDATE projeto SET nome = '" + modelProjeto.getNome() + "', " + 
		"login_pai_id = " + modelProjeto.getLogin_pai_id().getId() + ", " + 
		"foto1 = '" + modelProjeto.getFoto1() + "', " + 
		"extensaofoto1 = '" + modelProjeto.getExtensaofoto1() + "'"; 
		return sql;
	}
	
	public String atualizacaoFoto2(ModelProjeto modelProjeto) {
		String sql = "UPDATE projeto SET nome = '" + modelProjeto.getNome() + "', " + 
		"login_pai_id = " + modelProjeto.getLogin_pai_id().getId() + ", " + 
		"foto2 = '" + modelProjeto.getFoto2() + "', " + 
		"extensaofoto2 = '" + modelProjeto.getExtensaofoto2() + "'"; 
		return sql;
	}
	
	public String atualizacaoFoto3(ModelProjeto modelProjeto) {
		String sql = "UPDATE projeto SET nome = '" + modelProjeto.getNome() + "', " + 
		"login_pai_id = " + modelProjeto.getLogin_pai_id().getId() + ", " + 
		"foto3 = '" + modelProjeto.getFoto3() + "', " + 
		"extensaofoto3 = '" + modelProjeto.getExtensaofoto3() + "'"; 
		return sql;
	}
	
	public String atualizacaoFoto4(ModelProjeto modelProjeto) {
		String sql = "UPDATE projeto SET nome = '" + modelProjeto.getNome() + "', " + 
		"login_pai_id = " + modelProjeto.getLogin_pai_id().getId() + ", " + 
		"foto4 = '" + modelProjeto.getFoto4() + "', " + 
		"extensaofoto4 = '" + modelProjeto.getExtensaofoto4() + "'"; 
		return sql;
	}
	
	public String atualizacaoFoto5(ModelProjeto modelProjeto) {
		String sql = "UPDATE projeto SET nome = '" + modelProjeto.getNome() + "', " + 
		"login_pai_id = " + modelProjeto.getLogin_pai_id().getId() + ", " + 
		"foto5 = '" + modelProjeto.getFoto5() + "', " + 
		"extensaofoto5 = '" + modelProjeto.getExtensaofoto5() + "'"; 
		return sql;
	}
	
	public String atualizacaoFoto6(ModelProjeto modelProjeto) {
		String sql = "UPDATE projeto SET nome = '" + modelProjeto.getNome() + "', " + 
		"login_pai_id = " + modelProjeto.getLogin_pai_id().getId() + ", " + 
		"foto6 = '" + modelProjeto.getFoto6() + "', " + 
		"extensaofoto6 = '" + modelProjeto.getExtensaofoto6() + "'"; 
		return sql;
	}
	
	public String atualizacaoFoto7(ModelProjeto modelProjeto) {
		String sql = "UPDATE projeto SET nome = '" + modelProjeto.getNome() + "', " + 
		"login_pai_id = " + modelProjeto.getLogin_pai_id().getId() + ", " + 
		"foto7 = '" + modelProjeto.getFoto7() + "', " + 
		"extensaofoto7 = '" + modelProjeto.getExtensaofoto7() + "'"; 
		return sql;
	}
	
	public String atualizacaoFoto8(ModelProjeto modelProjeto) {
		String sql = "UPDATE projeto SET nome = '" + modelProjeto.getNome() + "', " + 
		"login_pai_id = " + modelProjeto.getLogin_pai_id().getId() + ", " + 
		"foto8 = '" + modelProjeto.getFoto8() + "', " + 
		"extensaofoto8 = '" + modelProjeto.getExtensaofoto8() + "'"; 
		return sql;
	}
	
	public String atualizacaoFoto9(ModelProjeto modelProjeto) {
		String sql = "UPDATE projeto SET nome = '" + modelProjeto.getNome() + "', " + 
		"login_pai_id = " + modelProjeto.getLogin_pai_id().getId() + ", " + 
		"foto9 = '" + modelProjeto.getFoto9() + "', " + 
		"extensaofoto9 = '" + modelProjeto.getExtensaofoto9() + "'"; 
		return sql;
	}
	
	public String atualizacaoTipo(int tipo, Long id) {
		String sql = "UPDATE projeto SET tipo = " + tipo + " WHERE id = " + id;
		return sql;
	}

	public String buscaProjeto(Long id) {
		String sql = "SELECT * FROM projeto WHERE id = " + id;
		return sql;
	}
	
	public String buscaProjetoPrincipal() {
		String sql = "SELECT * FROM projeto WHERE tipo = " + 1;
		return sql;
	}
	
	public String listaProjetos(Long login_pai_id) {
		String sql = "SELECT * FROM projeto WHERE login_pai_id = " + login_pai_id;
		return sql;
	}
	
	public String excluiProjeto(Long id) {
		String sql = "DELETE FROM projeto WHERE id = " + id;
		return sql;
	}
}
