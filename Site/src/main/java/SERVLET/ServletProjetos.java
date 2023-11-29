package SERVLET;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import DAO.DAOProjetos;
import Model.ModelProjeto;
import SERVLET.API.APIEntrada;
import SQL.SQL;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@MultipartConfig
@WebServlet(urlPatterns = { "/ServletProjetos" })
public class ServletProjetos extends APIEntrada {
	
	private static final long serialVersionUID = 1L;
	
	DAOProjetos daoprojetos = new DAOProjetos();
	SQL sqlprojeto = new SQL();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			if(acao(request).equalsIgnoreCase("carregarTelaIndex")) {
				carregarTelaIndex(request, response);
			}else if(acao(request).equalsIgnoreCase("carregarProjetoIndex")) {
				carregarProjetoIndex(request, response);
			}else if(acao(request).equalsIgnoreCase("acessarProjetosServidor")) {
				acessarProjetosServidor(request, response);
			}else if(acao(request).equalsIgnoreCase("carregarProjetoEditar")) {
				carregarProjetoEditar(request, response);
			}else if(acao(request).equalsIgnoreCase("excluirProjeto")) {
				excluirProjeto(request, response);
			}else if(acao(request).equalsIgnoreCase("alternarRankingProjetos")) {
				alternarRankingProjetos(request, response);
			}else if(acao(request).equalsIgnoreCase("contato")) {
				contato(request, response);
			}else if(acao(request).equalsIgnoreCase("areaRestrita")) {
				areaRestrita(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		try {
			if(projetoNovo(request)) {
				persistirProjeto(request, response);
			}else {
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
		modelProjeto.setLogin_pai_id(getUser(request));
		modelProjeto.setNome(nome_projeto(request));
		modelProjeto.setSobre(sobre_projeto(request));
		modelProjeto.setData(data(request));
		modelProjeto.setLocal(local(request));
		modelProjeto.setRanking(ranking_projeto(request));
		daoprojetos.atualizarProjeto(sqlprojeto.atualizacaoRankingPorRanking(ranking_projeto(request)));
		daoprojetos.persistirProjeto(sqlprojeto.persistenciaProjeto(modelProjeto));
		acessarProjetosServidor(request, response);
	}
	
	public void carregarTelaIndex(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("projetos", daoprojetos.listarProjetos(sqlprojeto.listaProjetos()));
		request.getRequestDispatcher("aplicacao/index.jsp").forward(request, response);
	}

	public void carregarProjetoIndex(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("projeto", daoprojetos.buscarProjeto(sqlprojeto.buscaProjetoPorRanking(ranking_projeto(request))));
		request.getRequestDispatcher("aplicacao/projeto.jsp").forward(request, response);
	}
	
	public void carregarProjetoEditar(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("projeto", daoprojetos.buscarProjeto(sqlprojeto.buscaProjeto(id_projeto(request))));
		request.setAttribute("projetos", daoprojetos.listarProjetos(sqlprojeto.listaProjetos(getUser(request).getId())));
		request.setAttribute("projetosDesranqueados", daoprojetos.listarProjetos(sqlprojeto.listaProjetosDesranqueados(getUser(request).getId())));
		request.setAttribute("options", daoprojetos.alternarVerificarExistenciaDeProjeto());
		request.getRequestDispatcher("aplicacao/principal/cadastrarProjeto.jsp").forward(request, response);
	}
	
	public void excluirProjeto(HttpServletRequest request, HttpServletResponse response) throws SQLException, Exception {
		daoprojetos.excluirProjeto(sqlprojeto.excluiProjeto(id_projeto(request)));
		acessarProjetosServidor(request, response);
	}
	
	public void editarProjeto(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelProjeto modelProjeto = new ModelProjeto();
		modelProjeto = editarProjetoSetarValoresUniversais(request, modelProjeto);
		modelProjeto = editarProjetoSetarFotos(request, response, modelProjeto);
		acessarProjetosServidor(request, response);
	}
	
	public ModelProjeto editarProjetoSetarFotos(HttpServletRequest request, HttpServletResponse response, ModelProjeto modelProjeto) throws Exception{
		editarProjetoSetarImagemPrincipal(request, response, modelProjeto);
		editarProjetoSetarImagem1(request, response, modelProjeto);
		editarProjetoSetarImagem2(request, response, modelProjeto);
		editarProjetoSetarImagem3(request, response, modelProjeto);
		editarProjetoSetarImagem4(request, response, modelProjeto);
		editarProjetoSetarImagem5(request, response, modelProjeto);
		editarProjetoSetarImagem6(request, response, modelProjeto);
		return modelProjeto;
	}
	
	public ModelProjeto editarProjetoSetarValoresUniversais(HttpServletRequest request, ModelProjeto modelProjeto) throws Exception  {
		modelProjeto.setSobre(sobre_projeto(request));
		modelProjeto.setLogin_pai_id(getUser(request));
		modelProjeto.setNome(nome_projeto(request));
		modelProjeto.setId(id_projeto(request));
		modelProjeto.setRanking(ranking_projeto(request));
		modelProjeto.setData(data(request));
		modelProjeto.setLocal(local(request));
		daoprojetos.atualizarProjeto(sqlprojeto.atualizacaoValoresUniversais(modelProjeto));
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
	
	public void alternarRankingProjetos(HttpServletRequest request, HttpServletResponse response) throws SQLException, Exception {
		daoprojetos.atualizarProjeto(sqlprojeto.atualizacaoRanking(0, daoprojetos.buscarProjeto(sqlprojeto.buscaProjetoPorRanking(ranking_projeto(request))).getId()));
		daoprojetos.atualizarProjeto(sqlprojeto.atualizacaoRanking(ranking_projeto(request), id_projeto(request)));
		acessarProjetosServidor(request, response);
	}

	public void acessarProjetosServidor(HttpServletRequest request, HttpServletResponse response) throws SQLException, Exception {
		request.setAttribute("projetos", daoprojetos.listarProjetos(sqlprojeto.listaProjetos(getUser(request).getId())));
		request.setAttribute("projetosDesranqueados", daoprojetos.listarProjetos(sqlprojeto.listaProjetosDesranqueados(getUser(request).getId())));
		request.setAttribute("options", daoprojetos.alternarVerificarExistenciaDeProjeto());
		request.getRequestDispatcher("aplicacao/principal/cadastrarProjeto.jsp").forward(request, response);
	}
	
	public void contato(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("aplicacao/contato.jsp").forward(request, response);
	}
	
	public void areaRestrita(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.getRequestDispatcher("aplicacao/restrito.jsp").forward(request, response);
	}
}
