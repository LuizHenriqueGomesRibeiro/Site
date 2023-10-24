package SERVLET;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import DAO.DAOProjetos;
import Model.ModelProjeto;
import SERVLET.API.APIEntrada;
import SQL.SQL;

/**
 * Servlet implementation class Projetos
 */
@MultipartConfig
@WebServlet(urlPatterns = { "/ServletProjetos" })
public class ServletProjetos extends APIEntrada {
	private static final long serialVersionUID = 1L;
	DAOProjetos daoprojetos = new DAOProjetos();
	SQL sqlprojeto = new SQL();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(acao(request).equalsIgnoreCase("acessarProjetos")) {
			acessarProjetos(request, response);
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		try {
			if(acao(request).equalsIgnoreCase("persistirProjeto")) {
				persistirProjeto(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void acessarProjetos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("principal/cadastrarProjeto.jsp").forward(request, response);
	}
	
	public void persistirProjeto(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelProjeto projeto = parametrosPersistirProjeto(request);
		daoprojetos.persistirProjeto(sqlprojeto.persistenciaProjeto(projeto));
		request.setAttribute("projeto", projeto);
		request.getRequestDispatcher("principal/cadastrarProjeto.jsp").forward(request, response);
	}
	
}
