package Filter;

import connection.Connect_MySQL;
import controller.Login;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.util.logging.LogRecord;
@WebFilter("/indexcustormer.jsp")
public class FilterLogin implements Filter {
    Connect_MySQL connect_mySQL=new Connect_MySQL();


    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        if (Login.account==null){
            RequestDispatcher requestDispatcher=request.getRequestDispatcher("/indexcustormer.jsp");
            requestDispatcher.forward(request,response);
        }else{
            chain.doFilter(request,response);
        }
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
