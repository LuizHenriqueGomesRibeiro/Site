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

@WebFilter(urlPatterns = {"/aplicacao/index.jsp"})
public class FiltroCarregamentoIndex implements Filter {
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		String filtrarCarregamento = httpRequest.getParameter("filtrarCarregamento");
		if(filtrarCarregamento == null) {
			request.getRequestDispatcher("../inicio.jsp?filtrarCarregamento=filtrarCarregamento").forward(httpRequest, response);
		}else {
			request.getRequestDispatcher("../ServletProjetos").forward(httpRequest, response);
		}
		//chain.doFilter(request, response);
	}
}

