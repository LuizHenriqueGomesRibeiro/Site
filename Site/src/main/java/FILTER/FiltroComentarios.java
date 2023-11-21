package FILTER;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebFilter(urlPatterns = {"/aplicacao/principal/*"})
public class FiltroComentarios implements Filter {
       
    public FiltroComentarios() {
        super();
    }

	public void destroy() {
	
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest requestSession = (HttpServletRequest) request;
		HttpSession session = requestSession.getSession();
		String perguntas = (String) session.getAttribute("perguntas");
		if(perguntas == null || (perguntas.isEmpty() && perguntas == null)) {
			request.getRequestDispatcher("/aplicacao/principal/principal.jsp").forward(request, response);
			return;
		}else {
			chain.doFilter(request, response);
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {
	
	}
}
