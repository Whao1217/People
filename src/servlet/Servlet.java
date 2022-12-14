package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.dao;
import bean.info;
import service.Service;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Servlet() {
        // TODO Auto-generated constructor stub
    }

    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		info webactivity=new info();
		
		Service service=new Service();
		
		
		String residenceType = request.getParameter("residenceType");
		String housingType = request.getParameter("housingType");
		String housingArea=request.getParameter("housingArea");
		String numberOfrooms=request.getParameter("numberOfrooms");
		String nameOfhouseholder=request.getParameter("nameOfhouseholder");
		String idCard=request.getParameter("idCard");
		String sex=request.getParameter("sex");
		String nation=request.getParameter("nation");
		String education=request.getParameter("education");
		String method=request.getParameter("method");
	
		
		webactivity.setResidenceType(residenceType);
		webactivity.setHousingType(housingType);
		webactivity.setHousingArea(housingArea);
		webactivity.setNumberOfrooms(numberOfrooms);
		webactivity.setNameOfhouseholder(nameOfhouseholder);
		webactivity.setIdCard(idCard);
		webactivity.setSex(sex);
		webactivity.setNation(nation);
		webactivity.setEducation(education);
		 
		 if("add".equals(method)) {
			 if(Service.add(webactivity)) {
				System.out.print("????????????");
				List<info> activity11=Service.list();
				request.setAttribute("activity11",activity11); 
				request.setAttribute("message", "????????????");
				request.getRequestDispatcher("message.jsp").forward(request,response);
			}
			else {
				System.out.println("????????????");
				request.setAttribute("message", "????????????,????????????????????????");
				request.getRequestDispatcher("message.jsp").forward(request,response);
			}
		}
		   
		   
		   if("del".equals(method)) {
			   dao dao=new dao();
			   if(dao.delete(nameOfhouseholder)!=0) {
				   System.out.print("????????????");
				   request.setAttribute("message", "????????????");
					request.getRequestDispatcher("show.jsp").forward(request,response);
			   }
			   else {
				   System.out.print("????????????");
				   request.setAttribute("message", "????????????");
					request.getRequestDispatcher("dalete.jsp").forward(request,response);
			   }
		   }
		
		   
		   if("updata".equals(method)) {
			if(Service.update(webactivity)) {
				request.setAttribute("message", "????????????");
			System.out.println("????????????");	
			List<info> activity11=Service.list();
			request.setAttribute("activity11",activity11); 
			request.getRequestDispatcher("show.jsp").forward(request,response);
			}
			else {
				   request.setAttribute("message", "?????????????????????");
				   request.getRequestDispatcher("change.jsp").forward(request,response);
				   System.out.print("????????????");
			   }
		
		}
		
		   
		   if("search".equals(method)) {
			   ArrayList<info> activity1=Service.search(webactivity);
			if(activity1!=null) {
				//request.setAttribute("message", "????????????");
				//System.out.print("????????????");
				request.setAttribute("activity11", activity1);
				request.getRequestDispatcher("searchshow.jsp").forward(request,response);	
			}
			else {
				request.setAttribute("message", "????????????");
				//System.out.print("????????????");
				request.getRequestDispatcher("search.jsp").forward(request,response);
			}
		}
		   if("show".equals(method)) {
			    List<info> activity11=Service.list();
				request.setAttribute("activity11",activity11); 
				request.getRequestDispatcher("show.jsp").forward(request,response);
		   }
	}
}
