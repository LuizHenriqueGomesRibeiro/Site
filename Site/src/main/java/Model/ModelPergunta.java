package Model;

public class ModelPergunta {
	private Long id;
	private String nome;
	private String email;
	private String mensagem;
	private String data;
	
	public ModelPergunta() {
		
	}
	
	public ModelPergunta(String nome, String email, String mensagem, String data) {
		this.nome = nome;
		this.email = email;
		this.mensagem = mensagem;
		this.data = data;
	}
	
	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMensagem() {
		return mensagem;
	}
	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}
}
