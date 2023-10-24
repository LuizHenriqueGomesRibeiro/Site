package SQL;

import Model.ModelProjeto;

public class SQL {
	public String persistenciaProjeto(ModelProjeto modelProjeto) {
		String sql = "INSERT INTO projeto(nome, login_pai_id, fotoprojeto, extensaofotoprojeto) VALUES ('" + 
			modelProjeto.getNome() 
			+ "', '" + modelProjeto.getLogin_pai_id().getId() 
			+ "', " + modelProjeto.getFotoprojeto() 
			+ ", '" + modelProjeto.getExtensaofotoprojeto() + "')";
		return sql;
	}
}
