package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.info;
import bean.dao;

/**
 * Servlet implementation class updateServlet
 */
@WebServlet("/updateServlet")
public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		info bean=new info();
		info beanform=new info();
		dao dao=new dao();
		bean = dao.selectName(request.getParameter("selectname"));
     	System.out.println(request.getParameter("selectname"));
		if(bean!=null)
		{
			request.setAttribute("info",bean);
			request.getRequestDispatcher("changeinfo.jsp").forward(request,response);
		}
		else {
			
			request.setAttribute("message", "该户主信息不存在");
			request.getRequestDispatcher("message.jsp").forward(request,response);
			//response.sendRedirect("index.jsp");
		}
	}
}