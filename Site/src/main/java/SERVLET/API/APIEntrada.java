package SERVLET.API;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class APIServletsClientes
 */
public class APIEntrada extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

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
	
	public String parametrosCadastrarPergunta(HttpServletRequest request) {
		String string = "";
		return string;
	}
}
