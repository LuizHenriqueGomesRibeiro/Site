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

import java.io.IOException;

@WebFilter(urlPatterns = {"/aplicacao/principal/*"})
public class FiltroLogin implements Filter {
       
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpServlet = (HttpServletRequest) request;
		String validarLogin = httpServlet.getParameter("validarLogin");
		if(validarLogin == null) {
			request.getRequestDispatcher("../restrito.jsp?validarLogin=validarLogin").forward(request, response);
		}else {
			request.getRequestDispatcher("/ServletLogin").forward(request, response);
		}
	}
}
