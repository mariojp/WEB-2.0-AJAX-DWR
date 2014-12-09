package br.com.mariojp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Soma")
public class Soma extends HttpServlet {
	private static final long serialVersionUID = 1L;
    

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String t1 = request.getParameter("num1");
		String t2 = request.getParameter("num2");
		int n1 = Integer.parseInt(t1);
		int n2 = Integer.parseInt(t2);
		int res = n1 + n2;
		response.getWriter().println(res);
	}


}
