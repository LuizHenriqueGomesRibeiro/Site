package FILTER;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebFilter(urlPatterns = {"/aplicacao/principal/*"})
public class FiltroLogin implements Filter {
       
    public FiltroLogin() {
        super();
    }

	public void destroy() {
	
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest requestSession = (HttpServletRequest) request;
		HttpSession session = requestSession.getSession();
		String usuarioLogado = (String) session.getAttribute("senha");
		String urlParaAutenticar = requestSession.getServletPath();
		if(usuarioLogado == null || (usuarioLogado.isEmpty() && usuarioLogado == null) && !urlParaAutenticar.contains("/ServletLogin")) {
			request.setAttribute("mensagem", "Realize o login");
			request.getRequestDispatcher("/aplicacao/restrito.jsp?url=" + urlParaAutenticar).forward(request, response);
			return;
		}else {
			chain.doFilter(request, response);
		}
		
	}

	public void init(FilterConfig fConfig) throws ServletException {

	}

}
