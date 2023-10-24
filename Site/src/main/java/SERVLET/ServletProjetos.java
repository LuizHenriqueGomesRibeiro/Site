package SERVLET;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import SERVLET.API.APIEntrada;

/**
 * Servlet implementation class Projetos
 */
@MultipartConfig
@WebServlet(urlPatterns = { "/ServletProjetos" })
public class ServletProjetos extends APIEntrada {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(acao(request).equalsIgnoreCase("persistirProjeto")) {
			persistirProjeto(request);
		}
	}
	
	public void persistirProjeto(HttpServletRequest request){
		
	}
}
