package SERVLET;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

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
		try {
			if(acao(request).equalsIgnoreCase("acessarProjetos")) {
				acessarProjetos(request, response);
			}else if(acao(request).equalsIgnoreCase("carregarTela")) {
				carregarTela(request, response);
			}else if(acao(request).equalsIgnoreCase("carregarProjeto1")) {
				carregarProjeto1(request, response);
			}else if(acao(request).equalsIgnoreCase("carregarProjetoEditar")) {
				carregarProjetoEditar(request, response);
			}else if(acao(request).equalsIgnoreCase("excluirProjeto")) {
				excluirProjeto(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		try {
			if(acao(request).equalsIgnoreCase("persistirProjeto")) {
				persistirProjeto(request, response);
			}else if(acao(request).equalsIgnoreCase("editarProjeto")) {
				editarProjeto(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void persistirProjeto(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelProjeto modelProjeto = new ModelProjeto();
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
		daoprojetos.persistirProjeto(sqlprojeto.persistenciaProjeto(modelProjeto));
		acessarProjetos(request, response);
	}
	
	public void carregarTela(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		// You need to fix it yet;
		ModelProjeto projeto = daoprojetos.buscarProjeto(sqlprojeto.buscaProjeto(28L));
		request.setAttribute("projeto", projeto);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
	
	public void carregarProjeto1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		// You need to fix it yet;
		ModelProjeto projeto = daoprojetos.buscarProjeto(sqlprojeto.buscaProjeto(28L));
		request.setAttribute("projeto", projeto);
		request.getRequestDispatcher("projeto1.jsp").forward(request, response);
	}
	
	public void carregarProjetoEditar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		ModelProjeto projeto = daoprojetos.buscarProjeto(sqlprojeto.buscaProjeto(id_projeto(request)));
		request.setAttribute("projeto", projeto);
		request.getRequestDispatcher("principal/carregarProjetoEditar.jsp").forward(request, response);
	}
	
	public void excluirProjeto(HttpServletRequest request, HttpServletResponse response) throws SQLException, Exception {
		daoprojetos.excluirProjeto(sqlprojeto.excluiProjeto(id_projeto(request)));
		acessarProjetos(request, response);
	}
	
	public void editarProjeto(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelProjeto modelProjeto = new ModelProjeto();
		if(imagem_projeto(request).length() != 31) {
			modelProjeto.setFotoprojeto(imagem_projeto(request));
			modelProjeto.setExtensaofotoprojeto(imagem_projeto_tipo(request));
		}if(imagem1(request).length() != 31) {
			modelProjeto.setFoto1(imagem1(request));
			modelProjeto.setExtensaofoto1(imagem1tipo(request));
		}if(imagem2(request).length() != 31) {
			modelProjeto.setFoto2(imagem2(request));
			modelProjeto.setExtensaofoto2(imagem2tipo(request));
		}if(imagem3(request).length() != 31) {
			modelProjeto.setFoto3(imagem3(request));
			modelProjeto.setExtensaofoto3(imagem3tipo(request));
		}if(imagem4(request).length() != 31) {
			modelProjeto.setFoto4(imagem4(request));
			modelProjeto.setExtensaofoto4(imagem4tipo(request));
		}if(imagem5(request).length() != 31) {
			modelProjeto.setFoto5(imagem5(request));
			modelProjeto.setExtensaofoto5(imagem5tipo(request));
		}if(imagem6(request).length() != 31) {
			modelProjeto.setFoto6(imagem6(request));
			modelProjeto.setExtensaofoto6(imagem6tipo(request));
		}if(imagem7(request).length() != 31) {
			modelProjeto.setFoto7(imagem7(request));
			modelProjeto.setExtensaofoto7(imagem7tipo(request));
		}if(imagem8(request).length() != 31) {
			modelProjeto.setFoto8(imagem8(request));
			modelProjeto.setExtensaofoto8(imagem8tipo(request));
		}if(imagem9(request).length() != 31) {
			modelProjeto.setFoto9(imagem9(request));
			modelProjeto.setExtensaofoto9(imagem9tipo(request));
		}
		
		modelProjeto.setLogin_pai_id(getUser(request));
		modelProjeto.setNome(nome_projeto(request));
		daoprojetos.atualizarProjeto(sqlprojeto.atualizacaoProjeto(modelProjeto));
		acessarProjetos(request, response);
	}
	
	public void acessarProjetos(HttpServletRequest request, HttpServletResponse response) throws SQLException, Exception {
		request.setAttribute("projetos", daoprojetos.listarProjetos(sqlprojeto.listaProjetos(getUser(request).getId())));
		request.getRequestDispatcher("principal/cadastrarProjeto.jsp").forward(request, response);
	}
}
