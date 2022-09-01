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
				System.out.print("添加成功");
				List<info> activity11=Service.list();
				request.setAttribute("activity11",activity11); 
				request.setAttribute("message", "添加成功");
				request.getRequestDispatcher("message.jsp").forward(request,response);
			}
			else {
				System.out.println("添加失败");
				request.setAttribute("message", "添加失败,该用户填写过表单");
				request.getRequestDispatcher("message.jsp").forward(request,response);
			}
		}
		   
		   
		   if("del".equals(method)) {
			   dao dao=new dao();
			   if(dao.delete(nameOfhouseholder)!=0) {
				   System.out.print("删除成功");
				   request.setAttribute("message", "删除成功");
					request.getRequestDispatcher("show.jsp").forward(request,response);
			   }
			   else {
				   System.out.print("删除失败");
				   request.setAttribute("message", "删除失败");
					request.getRequestDispatcher("dalete.jsp").forward(request,response);
			   }
		   }
		
		   
		   if("updata".equals(method)) {
			if(Service.update(webactivity)) {
				request.setAttribute("message", "修改成功");
			System.out.println("修改成功");	
			List<info> activity11=Service.list();
			request.setAttribute("activity11",activity11); 
			request.getRequestDispatcher("show.jsp").forward(request,response);
			}
			else {
				   request.setAttribute("message", "该志信息不存在");
				   request.getRequestDispatcher("change.jsp").forward(request,response);
				   System.out.print("修改失败");
			   }
		
		}
		
		   
		   if("search".equals(method)) {
			   ArrayList<info> activity1=Service.search(webactivity);
			if(activity1!=null) {
				//request.setAttribute("message", "查询成功");
				//System.out.print("查询成功");
				request.setAttribute("activity11", activity1);
				request.getRequestDispatcher("searchshow.jsp").forward(request,response);	
			}
			else {
				request.setAttribute("message", "查询失败");
				//System.out.print("查询失败");
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
