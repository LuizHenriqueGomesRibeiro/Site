package SERVLET;

import java.io.IOException;
import java.sql.SQLException;

import DAO.DAOProjetos;
import Model.ModelProjeto;
import SERVLET.API.APIEntrada;
import SQL.SQL;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

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
			}else if(acao(request).equalsIgnoreCase("carregarProjetoExibir")) {
				carregarProjetoExibir(request, response);
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
		modelProjeto.setRanking(ranking_projeto(request));
		modelProjeto.setLogin_pai_id(getUser(request));
		modelProjeto.setNome(nome_projeto(request));
		daoprojetos.persistirProjeto(sqlprojeto.persistenciaProjeto(modelProjeto));
		acessarProjetos(request, response);
	}
	
	public void carregarTela(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		request.setAttribute("projeto1", daoprojetos.buscarProjeto(sqlprojeto.buscaProjetoPorRanking(1)));
		request.setAttribute("projeto2", daoprojetos.buscarProjeto(sqlprojeto.buscaProjetoPorRanking(2)));
		request.setAttribute("projeto3", daoprojetos.buscarProjeto(sqlprojeto.buscaProjetoPorRanking(3)));
		request.setAttribute("projeto4", daoprojetos.buscarProjeto(sqlprojeto.buscaProjetoPorRanking(4)));
		request.setAttribute("projeto5", daoprojetos.buscarProjeto(sqlprojeto.buscaProjetoPorRanking(5)));
		request.setAttribute("projeto6", daoprojetos.buscarProjeto(sqlprojeto.buscaProjetoPorRanking(6)));
		request.setAttribute("projeto7", daoprojetos.buscarProjeto(sqlprojeto.buscaProjetoPorRanking(7)));
		request.setAttribute("projeto8", daoprojetos.buscarProjeto(sqlprojeto.buscaProjetoPorRanking(8)));
		request.setAttribute("projeto9", daoprojetos.buscarProjeto(sqlprojeto.buscaProjetoPorRanking(9)));
		request.getRequestDispatcher("aplicacao/index.jsp").forward(request, response);
	}
	
	public void carregarProjetoExibir(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		request.setAttribute("projeto" + ranking_projeto(request), daoprojetos.buscarProjeto(sqlprojeto.buscaProjetoPorRanking(ranking_projeto(request))));
		request.getRequestDispatcher("aplicacao/projeto" + ranking_projeto(request) + ".jsp").forward(request, response);
	}
	
	public void carregarProjetoEditar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		ModelProjeto projeto = daoprojetos.buscarProjeto(sqlprojeto.buscaProjeto(id_projeto(request)));
		request.setAttribute("projeto", projeto);
		request.getRequestDispatcher("aplicacao/principal/carregarProjetoEditar.jsp").forward(request, response);
	}
	
	public void excluirProjeto(HttpServletRequest request, HttpServletResponse response) throws SQLException, Exception {
		daoprojetos.excluirProjeto(sqlprojeto.excluiProjeto(id_projeto(request)));
		acessarProjetos(request, response);
	}
	
	public void editarProjeto(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelProjeto modelProjeto = new ModelProjeto();
		//editarProjetoAlternarTipo(request, response, modelProjeto);
		modelProjeto = editarProjetoSetarValoresUniversais(request, response, modelProjeto);
		modelProjeto = editarProjetoSetarFotos(request, response, modelProjeto);
		acessarProjetos(request, response);
	}
	
	public void editarProjetoAlternarTipo(HttpServletRequest request, HttpServletResponse response, ModelProjeto modelProjeto) throws Exception{
		if(tipo_projeto(request).equalsIgnoreCase("carrosel")) {
			modelProjeto.setTipo(0);
			daoprojetos.atualizarProjeto(sqlprojeto.atualizacaoTipo(0, id_projeto(request)));
		}else if(tipo_projeto(request).equalsIgnoreCase("principal")) {
			modelProjeto.setTipo(1);
			daoprojetos.atualizarProjeto(sqlprojeto.atualizacaoTipo(1, id_projeto(request)));
		}
	}
	
	public ModelProjeto editarProjetoSetarValoresUniversais(HttpServletRequest request, HttpServletResponse response, ModelProjeto modelProjeto) throws Exception  {
		modelProjeto.setLogin_pai_id(getUser(request));
		modelProjeto.setNome(nome_projeto(request));
		modelProjeto.setId(id_projeto(request));
		modelProjeto.setRanking(ranking_projeto(request));
		return modelProjeto; 
	}
	
	public ModelProjeto editarProjetoSetarFotos(HttpServletRequest request, HttpServletResponse response, ModelProjeto modelProjeto) throws Exception{
		modelProjeto = editarProjetoSetarValoresUniversais(request, response, modelProjeto);
		modelProjeto = editarProjetoSetarImagemPrincipal(request, response, modelProjeto);
		modelProjeto = editarProjetoSetarImagem1(request, response, modelProjeto);
		modelProjeto = editarProjetoSetarImagem2(request, response, modelProjeto);
		modelProjeto = editarProjetoSetarImagem3(request, response, modelProjeto);
		modelProjeto = editarProjetoSetarImagem4(request, response, modelProjeto);
		modelProjeto = editarProjetoSetarImagem5(request, response, modelProjeto);
		modelProjeto = editarProjetoSetarImagem6(request, response, modelProjeto);
		modelProjeto = editarProjetoSetarImagem7(request, response, modelProjeto);
		modelProjeto = editarProjetoSetarImagem8(request, response, modelProjeto);
		modelProjeto = editarProjetoSetarImagem9(request, response, modelProjeto);
		return modelProjeto;
	}
	
	public ModelProjeto editarProjetoSetarImagemPrincipal(HttpServletRequest request, HttpServletResponse response, ModelProjeto modelProjeto) throws Exception{
		if(imagem_projeto(request).length() > 100) {
			modelProjeto.setFotoprojeto(imagem_projeto(request));
			modelProjeto.setExtensaofotoprojeto(imagem_projeto_tipo(request));
			daoprojetos.atualizarProjeto(sqlprojeto.atualizacaoFotoProjeto(modelProjeto));
		}
		return modelProjeto;
	}
	
	public ModelProjeto editarProjetoSetarImagem1(HttpServletRequest request, HttpServletResponse response, ModelProjeto modelProjeto) throws Exception{
		if(imagem1(request).length() > 100) {
			modelProjeto.setFoto1(imagem1(request));
			modelProjeto.setExtensaofoto1(imagem1tipo(request));
			daoprojetos.atualizarProjeto(sqlprojeto.atualizacaoFoto1(modelProjeto));
		}
		return modelProjeto;
	}
	
	public ModelProjeto editarProjetoSetarImagem2(HttpServletRequest request, HttpServletResponse response, ModelProjeto modelProjeto) throws Exception{
		if(imagem2(request).length() > 100) {
			modelProjeto.setFoto2(imagem2(request));
			modelProjeto.setExtensaofoto2(imagem2tipo(request));
			daoprojetos.atualizarProjeto(sqlprojeto.atualizacaoFoto2(modelProjeto));
		}
		return modelProjeto;
	}
	
	public ModelProjeto editarProjetoSetarImagem3(HttpServletRequest request, HttpServletResponse response, ModelProjeto modelProjeto) throws Exception{
		if(imagem3(request).length() > 100) {
			modelProjeto.setFoto3(imagem3(request));
			modelProjeto.setExtensaofoto3(imagem3tipo(request));
			daoprojetos.atualizarProjeto(sqlprojeto.atualizacaoFoto3(modelProjeto));
		}
		return modelProjeto;
	}
	
	public ModelProjeto editarProjetoSetarImagem4(HttpServletRequest request, HttpServletResponse response, ModelProjeto modelProjeto) throws Exception{
		if(imagem4(request).length() > 100) {
			modelProjeto.setFoto4(imagem4(request));
			modelProjeto.setExtensaofoto4(imagem4tipo(request));
			daoprojetos.atualizarProjeto(sqlprojeto.atualizacaoFoto4(modelProjeto));
		}
		return modelProjeto;
	}
	
	public ModelProjeto editarProjetoSetarImagem5(HttpServletRequest request, HttpServletResponse response, ModelProjeto modelProjeto) throws Exception{
		if(imagem5(request).length() > 100) {
			modelProjeto.setFoto5(imagem5(request));
			modelProjeto.setExtensaofoto5(imagem5tipo(request));
			daoprojetos.atualizarProjeto(sqlprojeto.atualizacaoFoto5(modelProjeto));
		}
		return modelProjeto;
	}
	
	public ModelProjeto editarProjetoSetarImagem6(HttpServletRequest request, HttpServletResponse response, ModelProjeto modelProjeto) throws Exception{
		if(imagem6(request).length() > 100) {
			modelProjeto.setFoto6(imagem6(request));
			modelProjeto.setExtensaofoto6(imagem6tipo(request));
			daoprojetos.atualizarProjeto(sqlprojeto.atualizacaoFoto6(modelProjeto));
		}
		return modelProjeto;
	}
	
	public ModelProjeto editarProjetoSetarImagem7(HttpServletRequest request, HttpServletResponse response, ModelProjeto modelProjeto) throws Exception{
		if(imagem7(request).length() > 100) {
			modelProjeto.setFoto7(imagem7(request));
			modelProjeto.setExtensaofoto7(imagem7tipo(request));
			daoprojetos.atualizarProjeto(sqlprojeto.atualizacaoFoto7(modelProjeto));
		}
		return modelProjeto;
	}
	
	public ModelProjeto editarProjetoSetarImagem8(HttpServletRequest request, HttpServletResponse response, ModelProjeto modelProjeto) throws Exception{
		if(imagem8(request).length() > 100) {
			modelProjeto.setFoto8(imagem8(request));
			modelProjeto.setExtensaofoto8(imagem8tipo(request));
			daoprojetos.atualizarProjeto(sqlprojeto.atualizacaoFoto8(modelProjeto));
		}
		return modelProjeto;
	}
	
	public ModelProjeto editarProjetoSetarImagem9(HttpServletRequest request, HttpServletResponse response, ModelProjeto modelProjeto) throws Exception{
		if(imagem9(request).length() > 100) {
			modelProjeto.setFoto9(imagem9(request));
			modelProjeto.setExtensaofoto9(imagem9tipo(request));
			daoprojetos.atualizarProjeto(sqlprojeto.atualizacaoFoto9(modelProjeto));
		}
		return modelProjeto;
	}
	
	public void acessarProjetos(HttpServletRequest request, HttpServletResponse response) throws SQLException, Exception {
		request.setAttribute("projetos", daoprojetos.listarProjetos(sqlprojeto.listaProjetos(getUser(request).getId())));
		request.getRequestDispatcher("aplicacao/principal/cadastrarProjeto.jsp").forward(request, response);
	}
}
