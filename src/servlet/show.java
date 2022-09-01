package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import bean.dao;
import bean.info;

/**
 * Servlet implementation class show
 */
@WebServlet("/show")
public class show extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public show() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String method = request.getParameter("method");
		
		if(method.equals("show")) {
            try {
                show(request, response);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }else if(method.equals("search")) {
            try {
                search(request, response);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        //response.getWriter().append("Served at: ").append(request.getContextPath());
    }
	
	/**
     * @param request
     * @param response
     */
    private void show(HttpServletRequest request, HttpServletResponse response)throws SQLException, ServletException, IOException {
    	dao dao=new dao();
		List<info> list=new ArrayList<info>();
		list=dao.getAllinformation();
		if(list!=null) {
			//查询结果不为空，将list发送给show.jsp
			request.setAttribute("list", list);
			Gson gson=new Gson();
			String json = gson.toJson(list);
		    System.out.println(json);
		    response.getWriter().write(json);
		    //response.getWriter().write("查询结果不为空");
		}
		else {
			//查询结果位空，返回一个信息
			response.getWriter().write("查询结果为空");
		}
    }

   
    /**
     * @param request
     * @param response
     */
    private void search(HttpServletRequest request, HttpServletResponse response)throws SQLException, ServletException, IOException {
    	String name=request.getParameter("name");
    	dao dao=new dao();
		List<info> list=new ArrayList<info>();
		list=dao.select(name);
		if(list!=null) {
			Gson gson=new Gson();
			String json=gson.toJson(list);
			System.out.print(json);
			response.getWriter().write(json);
		}
		else {
			//查询结果位空，返回一个信息
			response.getWriter().write("查询结果为空");
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
