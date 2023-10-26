package SQL;

import Model.ModelProjeto;

public class SQL {
	public String persistenciaProjeto(ModelProjeto modelProjeto) {
		String sql = "INSERT INTO projeto(nome, login_pai_id, fotoprojeto, extensaofotoprojeto, foto1, extensaofoto1, foto2, extensaofoto2, foto3, extensaofoto3, " +
				"foto4, extensaofoto4, foto5, extensaofoto5, foto6, extensaofoto6, foto7, extensaofoto7, foto8, extensaofoto8, foto9, extensaofoto9) VALUES ('" + 
			modelProjeto.getNome() 
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
			+ "', '" + modelProjeto.getExtensaofoto9() +
			"')";
		return sql;
	}
}
