package SERVLET;

import DAO.DaoLogin;
import Model.ModelLogin;
import SQL.SQL;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletSessao
 */
public class ServletSessao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	DaoLogin daologin = new DaoLogin();
	SQL sql = new SQL();
	
    public ModelLogin getUser(HttpServletRequest request) throws Exception {
    	HttpSession session = request.getSession();	
    	String nome = (String) session.getAttribute("nome");
    	String senha = (String) session.getAttribute("senha");
    	return daologin.buscarLogin(sql.buscaDeLoginPorNomeSenha(nome, senha));
    }
}
