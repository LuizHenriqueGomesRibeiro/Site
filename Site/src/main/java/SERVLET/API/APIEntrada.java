package SERVLET.API;

import java.io.IOException;

import org.apache.tomcat.jakartaee.commons.compress.utils.IOUtils;
import org.apache.tomcat.util.codec.binary.Base64;

import Model.ModelLogin;
import Model.ModelProjeto;
import SERVLET.ServletSessao;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;

/**
 * Servlet implementation class APIServletsClientes
 */
public class APIEntrada extends ServletSessao {
	public String acao(HttpServletRequest request) {
		return request.getParameter("acao");
	}

	public String nome_cliente(HttpServletRequest request) {
		return request.getParameter("nome_cliente");
	}
	
	public String email(HttpServletRequest request) {
		return request.getParameter("email_cliente");
	}
	
	public String mensagem(HttpServletRequest request) {
		return request.getParameter("mensagem_cliente");
	}
	
	public String nome_projeto(HttpServletRequest request) {
		return request.getParameter("nome_projeto");
	}
	
	public String imagem_projeto(HttpServletRequest request) throws IOException, ServletException {
		Part part = request.getPart("foto1");
		byte[] foto = IOUtils.toByteArray(part.getInputStream());
		String imagem64 = "data:image/" + part.getContentType().split("\\/")[1] + ";base64," + Base64.encodeBase64String(foto);
		return imagem64;
	}
	
	public String imagem_projeto_tipo(HttpServletRequest request) throws IOException, ServletException {
		return request.getPart("foto1").getContentType().split("\\/")[1];
	}
	
	public String parametrosCadastrarPergunta(HttpServletRequest request) {
		String string = "";
		return string;
	}
	
	public ModelProjeto parametrosPersistirProjeto(HttpServletRequest request) throws Exception {
		ModelProjeto modelProjeto = new ModelProjeto();
		modelProjeto.setFotoprojeto(imagem_projeto(request));
		modelProjeto.setExtensaofotoprojeto(imagem_projeto_tipo(request));
		modelProjeto.setLogin_pai_id(getUser(request));
		return modelProjeto;
	}
}
