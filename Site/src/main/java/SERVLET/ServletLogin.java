package SERVLET;

import java.io.IOException;
import java.sql.SQLException;

import DAO.DaoLogin;
import Model.ModelLogin;
import SERVLET.API.APIEntrada;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@MultipartConfig
@WebServlet(urlPatterns = { "/ServletLogin" })
public class ServletLogin extends APIEntrada {
	private static final long serialVersionUID = 1L;
	
	DaoLogin daoLogin = new DaoLogin();
       
    public ServletLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acao = request.getParameter("acao");
		
		if(acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("validar")) {
			String email = request.getParameter("email");
			String senha = request.getParameter("senha");
			String url = request.getParameter("url");
			
			if(email != null && !email.isEmpty() && senha != null && !senha.isEmpty()) {
				ModelLogin modelLogin = new ModelLogin();
				modelLogin.setEmail(email);
				modelLogin.setSenha(senha);
				
				try {
					if(daoLogin.validarLogin(modelLogin)) {
						modelLogin = daoLogin.buscarLogin(modelLogin);
						HttpSession session = request.getSession();

						session.setAttribute("email", modelLogin.getEmail());
						session.setAttribute("senha", modelLogin.getSenha());
						session.setAttribute("nome", modelLogin.getNome());
						session.setAttribute("login", modelLogin);
						
						if (url == null || url.equals("null")) {
							url = "aplicacao/principal/principal.jsp";
						}

						RequestDispatcher redirecionar = request.getRequestDispatcher(url);
						redirecionar.forward(request, response);
						
					}else {
						RequestDispatcher redirecionar = request.getRequestDispatcher("aplicacao/restrito.jsp");
						request.setAttribute("mensagem", "Informe o login e senha corretamente.");
						redirecionar.forward(request, response);
					}
					
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}else {
			RequestDispatcher redirecionar = request.getRequestDispatcher("aplicacao/restrito.jsp");
			request.setAttribute("mensagem", "Ocorreu algum erro. Contacte a equipe de suporte.");
			redirecionar.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
