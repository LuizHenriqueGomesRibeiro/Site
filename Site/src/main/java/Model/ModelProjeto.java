package Model;

public class ModelProjeto {
	private Long id;
	private String nome;
	private String fotoprojeto;
	private String extensaofotoprojeto;
	private ModelLogin login_pai_id;
	
	public ModelLogin getLogin_pai_id() {
		return login_pai_id;
	}
	public void setLogin_pai_id(ModelLogin login_pai_id) {
		this.login_pai_id = login_pai_id;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getFotoprojeto() {
		return fotoprojeto;
	}
	public void setFotoprojeto(String fotoprojeto) {
		this.fotoprojeto = fotoprojeto;
	}
	public String getExtensaofotoprojeto() {
		return extensaofotoprojeto;
	}
	public void setExtensaofotoprojeto(String extensaofotoprojeto) {
		this.extensaofotoprojeto = extensaofotoprojeto;
	}
}
