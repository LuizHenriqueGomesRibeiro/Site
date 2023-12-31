package SQL;

import Model.ModelLogin;
import Model.ModelPergunta;
import Model.ModelProjeto;

public class SQL {
	public String persistenciaProjeto(ModelProjeto modelProjeto) {
		String sql = "INSERT INTO projeto(local, data, sobre, ranking, nome, login_pai_id, fotoprojeto, extensaofotoprojeto, foto1, extensaofoto1, foto2, extensaofoto2, foto3, extensaofoto3, " +
				"foto4, extensaofoto4, foto5, extensaofoto5, foto6, extensaofoto6, foto7, extensaofoto7, foto8, extensaofoto8, foto9, extensaofoto9) VALUES ('"
			+ modelProjeto.getLocal()
			+ "', '" + modelProjeto.getData()
			+ "', '" + modelProjeto.getSobre()
			+ "', " + modelProjeto.getRanking() 
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
	
	public String persistenciaPergunta(ModelPergunta modelPergunta) {
		String sql = "INSERT INTO pergunta(nome, email, mensagem, data) VALUES ('" 
			+ modelPergunta.getNome() + "', '" + modelPergunta.getEmail() + "', '" + modelPergunta.getMensagem() + "', '" + modelPergunta.getData() + "')";
		return sql;
	}
	
	public String buscaPergunta(Long id_mensagem) {
		String sql = "SELECT * FROM pergunta WHERE id = " + id_mensagem;
		return sql;
	}
	
	public String listaPerguntas() {
		String sql = "SELECT * FROM pergunta";
		return sql;
	}
	
	public String deletarMensagem(Long id) {
		String sql = "DELETE FROM pergunta WHERE id = " + id;
		return sql;
	}
	
	public String atualizacaoFotoProjeto(ModelProjeto modelProjeto) {
		String sql = "UPDATE projeto SET nome = '" + modelProjeto.getNome() + "', " + 
		"login_pai_id = " + modelProjeto.getLogin_pai_id().getId() + ", " + 
		"fotoprojeto = '" + modelProjeto.getFotoprojeto() + "', " + 
		"extensaofotoprojeto = '" + modelProjeto.getExtensaofotoprojeto() + "' WHERE id = " + modelProjeto.getId() + ";"; 
		return sql;
	}
	
	public String atualizacaoFoto1(ModelProjeto modelProjeto) {
		String sql = "UPDATE projeto SET nome = '" + modelProjeto.getNome() + "', " + 
		"login_pai_id = " + modelProjeto.getLogin_pai_id().getId() + ", " + 
		"foto1 = '" + modelProjeto.getFoto1() + "', " + 
		"extensaofoto1 = '" + modelProjeto.getExtensaofoto1() + "' WHERE id = " + modelProjeto.getId() + ";"; 
		return sql;
	}
	
	public String atualizacaoFoto2(ModelProjeto modelProjeto) {
		String sql = "UPDATE projeto SET nome = '" + modelProjeto.getNome() + "', " + 
		"login_pai_id = " + modelProjeto.getLogin_pai_id().getId() + ", " + 
		"foto2 = '" + modelProjeto.getFoto2() + "', " + 
		"extensaofoto2 = '" + modelProjeto.getExtensaofoto2() + "' WHERE id = " + modelProjeto.getId() + ";"; 
		return sql;
	}
	
	public String atualizacaoFoto3(ModelProjeto modelProjeto) {
		String sql = "UPDATE projeto SET nome = '" + modelProjeto.getNome() + "', " + 
		"login_pai_id = " + modelProjeto.getLogin_pai_id().getId() + ", " + 
		"foto3 = '" + modelProjeto.getFoto3() + "', " + 
		"extensaofoto3 = '" + modelProjeto.getExtensaofoto3() + "' WHERE id = " + modelProjeto.getId() + ";"; 
		return sql;
	}
	
	public String atualizacaoFoto4(ModelProjeto modelProjeto) {
		String sql = "UPDATE projeto SET nome = '" + modelProjeto.getNome() + "', " + 
		"login_pai_id = " + modelProjeto.getLogin_pai_id().getId() + ", " + 
		"foto4 = '" + modelProjeto.getFoto4() + "', " + 
		"extensaofoto4 = '" + modelProjeto.getExtensaofoto4() + "' WHERE id = " + modelProjeto.getId() + ";"; 
		return sql;
	}
	
	public String atualizacaoFoto5(ModelProjeto modelProjeto) {
		String sql = "UPDATE projeto SET nome = '" + modelProjeto.getNome() + "', " + 
		"login_pai_id = " + modelProjeto.getLogin_pai_id().getId() + ", " + 
		"foto5 = '" + modelProjeto.getFoto5() + "', " + 
		"extensaofoto5 = '" + modelProjeto.getExtensaofoto5() + "' WHERE id = " + modelProjeto.getId() + ";"; 
		return sql;
	}
	
	public String atualizacaoFoto6(ModelProjeto modelProjeto) {
		String sql = "UPDATE projeto SET nome = '" + modelProjeto.getNome() + "', " + 
		"login_pai_id = " + modelProjeto.getLogin_pai_id().getId() + ", " + 
		"foto6 = '" + modelProjeto.getFoto6() + "', " + 
		"extensaofoto6 = '" + modelProjeto.getExtensaofoto6() + "' WHERE id = " + modelProjeto.getId() + ";"; 
		return sql;
	}
	
	public String atualizacaoFoto7(ModelProjeto modelProjeto) {
		String sql = "UPDATE projeto SET nome = '" + modelProjeto.getNome() + "', " + 
		"login_pai_id = " + modelProjeto.getLogin_pai_id().getId() + ", " + 
		"foto7 = '" + modelProjeto.getFoto7() + "', " + 
		"extensaofoto7 = '" + modelProjeto.getExtensaofoto7() + "' WHERE id = " + modelProjeto.getId() + ";"; 
		return sql;
	}
	
	public String atualizacaoFoto8(ModelProjeto modelProjeto) {
		String sql = "UPDATE projeto SET nome = '" + modelProjeto.getNome() + "', " + 
		"login_pai_id = " + modelProjeto.getLogin_pai_id().getId() + ", " + 
		"foto8 = '" + modelProjeto.getFoto8() + "', " + 
		"extensaofoto8 = '" + modelProjeto.getExtensaofoto8() + "' WHERE id = " + modelProjeto.getId() + ";"; 
		return sql;
	}
	
	public String atualizacaoFoto9(ModelProjeto modelProjeto) {
		String sql = "UPDATE projeto SET nome = '" + modelProjeto.getNome() + "', " + 
		"login_pai_id = " + modelProjeto.getLogin_pai_id().getId() + ", " + 
		"foto9 = '" + modelProjeto.getFoto9() + "', " + 
		"extensaofoto9 = '" + modelProjeto.getExtensaofoto9() + "' WHERE id = " + modelProjeto.getId() + ";"; 
		return sql;
	}
	
	public String buscaProjeto(Long id) {
		String sql = "SELECT * FROM projeto WHERE id = " + id;
		return sql;
	}
	
	public String buscaProjetoPorRanking(int ranking) {
		String sql = "SELECT * FROM projeto WHERE ranking = " + ranking;
		return sql;
	}
		
	public String listaProjetos(Long login_pai_id) {
		String sql = "SELECT * FROM projeto WHERE login_pai_id = " + login_pai_id + " AND NOT ranking = " + 0 + " ORDER BY ranking ASC";
		return sql;
	}
	
	public String listaProjetos() {
		String sql = "SELECT * FROM projeto WHERE NOT ranking = " + 0 + " ORDER BY ranking ASC";
		return sql;
	}
	
	public String listaProjetosLIMIT5(Long login_pai_id) {
		String sql = "SELECT * FROM projeto WHERE NOT ranking = " + 0 + " ORDER BY ranking ASC LIMIT 5";
		return sql;
	}
	
	public String listaProjetosDesranqueados(Long login_pai_id) {
		String sql = "SELECT * FROM projeto WHERE login_pai_id = " + login_pai_id + " AND ranking = " + 0;
		return sql;
	}
	
	public String excluiProjeto(Long id) {
		String sql = "DELETE FROM projeto WHERE id = " + id;
		return sql;
	}

	public String atualizacaoValoresUniversais(ModelProjeto modelProjeto) {
		String sql = "UPDATE projeto SET data = '" + modelProjeto.getData() + "', local = '" + modelProjeto.getLocal() + "', sobre = '" + modelProjeto.getSobre() + 
			"', nome = '" + modelProjeto.getNome() + "', ranking = " + modelProjeto.getRanking() + " WHERE id = " + modelProjeto.getId() + ";";
		return sql;
	}
	
	public String atualizacaoRanking(int ranking, Long id) {
		String sql = "UPDATE projeto SET ranking = " + ranking + " WHERE id = " + id;
		return sql;
	}
	
	public String atualizacaoRankingPorRanking(int ranking) {
		String sql = "UPDATE projeto SET ranking = " + 0 + " WHERE ranking = " + ranking;
		return sql;
	}
	
	public String atualizacaoSenha(Long id, String senha) {
		String sql = "UPDATE login SET senha = '" + senha + "' WHERE id = " + id;
		return sql;
	}
	
	public String atualizacaoEmail(Long id, String email) {
		String sql = "UPDATE login SET email = '" + email + "' WHERE id = " + id;
		return sql;
	}
	
	public String atualizacaoNome(Long id, String nome) {
		String sql = "UPDATE login SET nome = '" + nome + "' WHERE id = " + id;
		return sql;
	}
	
	public String buscaDeLoginPorEmailSenha(ModelLogin modelLogin) {
		String sql = "SELECT * FROM login WHERE email = '" + modelLogin.getEmail() + "' AND senha = '" + modelLogin.getSenha() + "'";
		return sql;
	}
	
	public String buscaDeLoginPorLoginSenha(ModelLogin modelLogin) {
		String sql = "SELECT * FROM login WHERE login = '" + modelLogin.getLogin() + "' AND senha = '" + modelLogin.getSenha() + "'";
		return sql;
	}
	
	public String buscaDeLoginPorNomeSenha(String nome, String senha) {
		String sql = "SELECT * FROM login WHERE nome = '" + nome + "' AND senha = '" + senha + "'";
		return sql;
	}
	
	public String buscaDeLoginPorId(Long id) {
		String sql = "SELECT * FROM login WHERE id = " + id;
		return sql;
	}
}
