package SERVLET;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import DAO.DAOFormulario;
import Model.ModelPergunta;
import SERVLET.API.APIEntrada;
import SQL.SQL;

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
	
	protected void listarPerguntas(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("perguntas", daoformulario.listarPerguntas(sql.listaPerguntas()));
		request.getRequestDispatcher("aplicacao/principal/perguntas.jsp").forward(request, response);
	}
	
	protected void persistirPergunta(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelPergunta modelPergunta = new ModelPergunta(nome_cliente(request), email(request), mensagem(request));
		daoformulario.persistirPergunta(sql.persistenciaPergunta(modelPergunta));
		request.getRequestDispatcher("aplicacao/contato.jsp").forward(request, response);
	}
}
