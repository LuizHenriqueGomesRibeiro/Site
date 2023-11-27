package SERVLET;

import java.io.IOException;

import DAO.DaoLogin;
import Model.ModelLogin;
import SERVLET.API.APIEntrada;
import SQL.SQL;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@MultipartConfig
@WebServlet(urlPatterns = { "/ServletLogin" })
public class ServletLogin extends APIEntrada {
	private static final long serialVersionUID = 1L;
	
	DaoLogin daoLogin = new DaoLogin();
	SQL sql = new SQL();
       
    public ServletLogin() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	try {
	    	if(acao(request) != null && !acao(request).isEmpty() && acao(request).equalsIgnoreCase("acessarConfiguracoesUsuario")) {
				redirecionarConfiguracoesUsuario(request, response);
	    	}
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acao = request.getParameter("acao");
		try {
			if(acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("validar")) {
				validarLogin(request, response);
			}else if(acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("validarAcessoConfiguracoesUsuario")) {
				validarAcessoConfiguracoesUsuario(request, response);
			}else if(acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("redefinirSenha")) {
				redefinirSenha(request, response);
			}else if(acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("redefinirEmail")) {
				redefinirEmail(request, response);
			}else if(acao != null && !acao.isEmpty() && acao.equalsIgnoreCase("redefinirNome")) {
				redefinirNome(request, response);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
    
    protected void validarLogin(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		String url = request.getParameter("url");
		
		if(email != null && !email.isEmpty() && senha != null && !senha.isEmpty()) {
			ModelLogin modelLogin = new ModelLogin(email, senha);
			
			if(daoLogin.validarLogin(modelLogin)) {
				modelLogin = daoLogin.buscarLogin(sql.buscaDeLoginPorEmailSenha(modelLogin));
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
				request.setAttribute("mensagem", "Informe o login e senha corretamente.");
				request.getRequestDispatcher("aplicacao/restrito.jsp").forward(request, response);
			}
		}
    }
    
    protected void redirecionarConfiguracoesUsuario(HttpServletRequest request, HttpServletResponse response) throws Exception{
    	request.getRequestDispatcher("aplicacao/principal/configuracoesUsuario.jsp").forward(request, response);
    }
    
    protected void validarAcessoConfiguracoesUsuario(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	ModelLogin modelLogin = new ModelLogin(email(request), senha(request));
		if(daoLogin.validarLogin(modelLogin)) {
			setarAtributosEDespachar(request, response, null, true);
		}else {
			String mensagem = "Digite um E-mail e senha validos.";
			setarAtributosEDespachar(request, response, mensagem, false);
		}
    }
    
    protected void redefinirSenha(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	if(senhaAntiga(request).equals(senhaAntigaRepeticao(request)) && senhaNova(request).equals(senhaNovaRepeticao(request))) {
			daoLogin.atualizarLogin(sql.atualizacaoSenha(id(request), senhaNova(request)));
			String mensagem = "Senha atualizada com sucesso!";
			setarAtributosEDespachar(request, response, mensagem, true);
		}else {
			String mensagem = "As senhas não batem ou estão incorretas. Tente novamente.";
			setarAtributosEDespachar(request, response, mensagem, true);
		}
    }
    
    protected void redefinirEmail(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	daoLogin.atualizarLogin(sql.atualizacaoEmail(id(request), email(request)));
    	String mensagem = "E-mail atualizado com sucesso!";
    	setarAtributosEDespachar(request, response, mensagem, true);
    }
    
    protected void redefinirNome(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	daoLogin.atualizarLogin(sql.atualizacaoNome(id(request), nome(request)));
    	String mensagem = "Nome atualizado com sucesso!";
    	setarAtributosEDespachar(request, response, mensagem, true);
    }

    protected void setarAtributosEDespachar(HttpServletRequest request, HttpServletResponse response, String mensagem, boolean booleano) throws Exception {
    	request.setAttribute("alternarSistema", booleano);
    	request.setAttribute("mensagem", mensagem);
    	setarAtributosAlternarBuscaUsuario(request);
    	request.getRequestDispatcher("aplicacao/principal/configuracoesUsuario.jsp").forward(request, response);
    }
    
    protected void setarAtributosAlternarBuscaUsuario(HttpServletRequest request) throws Exception {
    	if(email(request) != null && senha(request) != null) {
    		request.setAttribute("usuario", daoLogin.buscarLogin(sql.buscaDeLoginPorEmailSenha(new ModelLogin(email(request), senha(request)))));
    	}else {
    		request.setAttribute("usuario", daoLogin.buscarLogin(sql.buscaDeLoginPorId(id(request))));
    	}
    }
}
