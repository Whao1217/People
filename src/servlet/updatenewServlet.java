package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.info;
import bean.dao;

/**
 * Servlet implementation class updatenewServlet
 */
@WebServlet("/updatenewServlet")
public class updatenewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("UTF-8");
		info infonew=new info();
		dao dao=new dao();
		
		infonew.setResidenceType(request.getParameter("residenceType"));
		infonew.setHousingType(request.getParameter("housingType"));
		infonew.setHousingArea(request.getParameter("housingArea"));
		infonew.setNumberOfrooms(request.getParameter("numberOfrooms"));
		infonew.setNameOfhouseholder(request.getParameter("nameOfhoseholder"));
		infonew.setIdCard(request.getParameter("idCard"));
		infonew.setSex(request.getParameter("sex"));
		infonew.setNation(request.getParameter("nation"));
		infonew.setEducation(request.getParameter("education"));
		
		System.out.print(infonew.getEducation());
          if(dao.update(infonew)) {
			//request.setAttribute("message", "添加成功");
		 	response.sendRedirect("show.jsp");
		}
		else {
			//request.setAttribute("message","添加失败");
			response.sendRedirect("changeName.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
