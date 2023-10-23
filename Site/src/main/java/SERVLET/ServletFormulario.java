package SERVLET;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import SERVLET.API.APIEntrada;

/**
 * Servlet implementation class Formulario
 */
@WebServlet(urlPatterns = { "/ServletFormulario" })
public class ServletFormulario extends APIEntrada {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletFormulario() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(acao(request) != null && !acao(request).isEmpty() && acao(request).equalsIgnoreCase("cadastrarPergunta")) {
			cadastrarPerguntas(request, response);
		}
	}
	
	protected void cadastrarPerguntas(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("contato.jsp").forward(request, response);
	}
}
