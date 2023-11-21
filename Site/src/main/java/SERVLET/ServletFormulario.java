package SERVLET;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import DAO.DAOFormulario;
import Model.ModelPergunta;
import SERVLET.API.APIEntrada;
import SQL.SQL;

//@WebFilter(urlPatterns = {"/aplicacao/principal/*"})
public class ServletFormulario extends APIEntrada {
	DAOFormulario daoformulario = new DAOFormulario();
	SQL sql = new SQL();
	
	private static final long serialVersionUID = 1L;
       
    public ServletFormulario() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			if(acao(request) != null && !acao(request).isEmpty() && acao(request).equalsIgnoreCase("listarPerguntas")) {
				listarPerguntas(request, response);
			}else if(acao(request) != null && !acao(request).isEmpty() && acao(request).equalsIgnoreCase("imprimirPerguntaTela")) {
				imprimirPerguntaTela(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			if(acao(request) != null && !acao(request).isEmpty() && acao(request).equalsIgnoreCase("cadastrarPergunta")) {
				persistirPergunta(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/*
	protected void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {
		String comentarios = (String) request.getAttribute("perguntas");
		if(comentarios.isEmpty() && comentarios == null) {
			
		}
		chain.doFilter(request, response);
	}
	*/
	protected void listarPerguntas(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("perguntas", daoformulario.listarPerguntas(sql.listaPerguntas()));
		request.getRequestDispatcher("aplicacao/principal/perguntas.jsp").forward(request, response);
	}
	
	protected void imprimirPerguntaTela(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("perguntas", daoformulario.listarPerguntas(sql.listaPerguntas()));
		request.setAttribute("pergunta", daoformulario.buscarPergunta(sql.buscaPergunta(id_mensagem(request))));
		request.getRequestDispatcher("aplicacao/principal/perguntas.jsp").forward(request, response);
	}
	
	protected void persistirPergunta(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelPergunta modelPergunta = new ModelPergunta(nome_cliente(request), email(request), mensagem(request), dataAtual());
		daoformulario.persistirPergunta(sql.persistenciaPergunta(modelPergunta));
		request.getRequestDispatcher("aplicacao/contato.jsp").forward(request, response);
	}
}
