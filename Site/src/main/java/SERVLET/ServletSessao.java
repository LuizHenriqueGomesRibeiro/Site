package SERVLET;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import DAO.DaoLogin;
import Model.ModelLogin;

/**
 * Servlet implementation class ServletSessao
 */
public class ServletSessao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	DaoLogin daologin = new DaoLogin();
	
    public ModelLogin getUser(HttpServletRequest request) throws Exception {
    	HttpSession session = request.getSession();	
    	String login = (String) session.getAttribute("nome");
    	String senha = (String) session.getAttribute("senha");
    	return daologin.buscarLogin(login, senha);
    }
}
