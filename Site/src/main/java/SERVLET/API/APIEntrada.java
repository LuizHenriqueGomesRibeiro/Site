package SERVLET.API;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

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
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String acao(HttpServletRequest request) {
		return request.getParameter("acao");
	}
	
	public Long id_projeto(HttpServletRequest request) {
		if(request.getParameter("id_projeto") != null && !request.getParameter("id_projeto").isEmpty()) {
			return Long.parseLong(request.getParameter("id_projeto"));
		}else {
			return null;
		}
	}
	
	public boolean projetoNovo(HttpServletRequest request) {
		if(id_projeto(request) == null) {
			return true;
		}else {
			return false;
		}
	}
	
	public Long id_mensagem(HttpServletRequest request) {
		return Long.parseLong(request.getParameter("id_mensagem"));
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
	
	public String tipo_projeto(HttpServletRequest request) {
		return request.getParameter("tipo_projeto");
	}
	
	public int ranking_projeto(HttpServletRequest request) {
		return Integer.parseInt(request.getParameter("ranking_projeto"));
	}
	
	public String sobre_projeto(HttpServletRequest request) {
		return request.getParameter("sobre_projeto");
	}
	
	public String imagem_projeto(HttpServletRequest request) throws IOException, ServletException {
		Part part = request.getPart("foto");
		byte[] foto = IOUtils.toByteArray(part.getInputStream());
		String imagem64 = "data:image/" + part.getContentType().split("\\/")[1] + ";base64," + Base64.encodeBase64String(foto);
		return imagem64;
	}
	
	public String imagem_projeto_tipo(HttpServletRequest request) throws IOException, ServletException {
		return request.getPart("foto").getContentType().split("\\/")[1];
	}
	
	public String imagem1(HttpServletRequest request) throws IOException, ServletException {
		Part part = request.getPart("foto1");
		byte[] foto = IOUtils.toByteArray(part.getInputStream());
		String imagem64 = "data:image/" + part.getContentType().split("\\/")[1] + ";base64," + Base64.encodeBase64String(foto);
		return imagem64;
	}
	
	public String imagem1tipo(HttpServletRequest request) throws IOException, ServletException {
		return request.getPart("foto1").getContentType().split("\\/")[1];
	}
	
	public String imagem2(HttpServletRequest request) throws IOException, ServletException {
		Part part = request.getPart("foto2");
		byte[] foto = IOUtils.toByteArray(part.getInputStream());
		String imagem64 = "data:image/" + part.getContentType().split("\\/")[1] + ";base64," + Base64.encodeBase64String(foto);
		return imagem64;
	}
	
	public String imagem2tipo(HttpServletRequest request) throws IOException, ServletException {
		return request.getPart("foto2").getContentType().split("\\/")[1];
	}
	
	public String imagem3(HttpServletRequest request) throws IOException, ServletException {
		Part part = request.getPart("foto3");
		byte[] foto = IOUtils.toByteArray(part.getInputStream());
		String imagem64 = "data:image/" + part.getContentType().split("\\/")[1] + ";base64," + Base64.encodeBase64String(foto);
		return imagem64;
	}
	
	public String imagem3tipo(HttpServletRequest request) throws IOException, ServletException {
		return request.getPart("foto3").getContentType().split("\\/")[1];
	}
	
	public String imagem4(HttpServletRequest request) throws IOException, ServletException {
		Part part = request.getPart("foto4");
		byte[] foto = IOUtils.toByteArray(part.getInputStream());
		String imagem64 = "data:image/" + part.getContentType().split("\\/")[1] + ";base64," + Base64.encodeBase64String(foto);
		return imagem64;
	}
	
	public String imagem4tipo(HttpServletRequest request) throws IOException, ServletException {
		return request.getPart("foto4").getContentType().split("\\/")[1];
	}
	
	public String imagem5(HttpServletRequest request) throws IOException, ServletException {
		Part part = request.getPart("foto5");
		byte[] foto = IOUtils.toByteArray(part.getInputStream());
		String imagem64 = "data:image/" + part.getContentType().split("\\/")[1] + ";base64," + Base64.encodeBase64String(foto);
		return imagem64;
	}
	
	public String imagem5tipo(HttpServletRequest request) throws IOException, ServletException {
		return request.getPart("foto5").getContentType().split("\\/")[1];
	}
	
	public String imagem6(HttpServletRequest request) throws IOException, ServletException {
		Part part = request.getPart("foto6");
		byte[] foto = IOUtils.toByteArray(part.getInputStream());
		String imagem64 = "data:image/" + part.getContentType().split("\\/")[1] + ";base64," + Base64.encodeBase64String(foto);
		return imagem64;
	}
	
	public String imagem6tipo(HttpServletRequest request) throws IOException, ServletException {
		return request.getPart("foto6").getContentType().split("\\/")[1];
	}
	
	public String imagem7(HttpServletRequest request) throws IOException, ServletException {
		Part part = request.getPart("foto7");
		byte[] foto = IOUtils.toByteArray(part.getInputStream());
		String imagem64 = "data:image/" + part.getContentType().split("\\/")[1] + ";base64," + Base64.encodeBase64String(foto);
		return imagem64;
	}
	
	public String imagem7tipo(HttpServletRequest request) throws IOException, ServletException {
		return request.getPart("foto7").getContentType().split("\\/")[1];
	}
	
	public String imagem8(HttpServletRequest request) throws IOException, ServletException {
		Part part = request.getPart("foto8");
		byte[] foto = IOUtils.toByteArray(part.getInputStream());
		String imagem64 = "data:image/" + part.getContentType().split("\\/")[1] + ";base64," + Base64.encodeBase64String(foto);
		return imagem64;
	}
	
	public String imagem8tipo(HttpServletRequest request) throws IOException, ServletException {
		return request.getPart("foto8").getContentType().split("\\/")[1];
	}
	
	public String imagem9(HttpServletRequest request) throws IOException, ServletException {
		Part part = request.getPart("foto9");
		byte[] foto = IOUtils.toByteArray(part.getInputStream());
		String imagem64 = "data:image/" + part.getContentType().split("\\/")[1] + ";base64," + Base64.encodeBase64String(foto);
		return imagem64;
	}
	
	public String imagem9tipo(HttpServletRequest request) throws IOException, ServletException {
		return request.getPart("foto9").getContentType().split("\\/")[1];
	}
	
	public ModelProjeto parametrosPersistirProjeto(HttpServletRequest request) throws Exception {
		ModelProjeto modelProjeto = new ModelProjeto();
		if(imagem_projeto(request).length() != 31) {
			modelProjeto.setFotoprojeto(imagem_projeto(request));
			modelProjeto.setExtensaofotoprojeto(imagem_projeto_tipo(request));
			modelProjeto.setFoto1(imagem1(request));
			modelProjeto.setExtensaofoto1(imagem1tipo(request));
			modelProjeto.setFoto2(imagem2(request));
			modelProjeto.setExtensaofoto2(imagem2tipo(request));
			modelProjeto.setFoto3(imagem3(request));
			modelProjeto.setExtensaofoto3(imagem3tipo(request));
			modelProjeto.setFoto4(imagem4(request));
			modelProjeto.setExtensaofoto4(imagem4tipo(request));
			modelProjeto.setFoto5(imagem5(request));
			modelProjeto.setExtensaofoto5(imagem5tipo(request));
			modelProjeto.setFoto6(imagem6(request));
			modelProjeto.setExtensaofoto6(imagem6tipo(request));
			modelProjeto.setFoto7(imagem7(request));
			modelProjeto.setExtensaofoto7(imagem7tipo(request));
			modelProjeto.setFoto8(imagem8(request));
			modelProjeto.setExtensaofoto8(imagem8tipo(request));
			modelProjeto.setFoto9(imagem9(request));
			modelProjeto.setExtensaofoto9(imagem9tipo(request));
			modelProjeto.setLogin_pai_id(getUser(request));
			modelProjeto.setNome(nome_projeto(request));
			modelProjeto.setId(id_projeto(request));
		}
		return modelProjeto;
	}
	
	public String sobre(HttpServletRequest request) {
		return request.getParameter("sobre");
	}
	
	public String dataAtual() {
		Date dataAtual = new Date();
		SimpleDateFormat formatoData = new SimpleDateFormat("yyyy-MM-dd");
		String dataFormatada = formatoData.format(dataAtual);
		return dataFormatada;
	}
	
}
