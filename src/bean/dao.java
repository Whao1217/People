package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.info;
import bean.db;



public class dao {
	
	info activity = new info();

	public  ArrayList<info> select(String nameOfhouseholder){//查找
		Connection con=null;
		PreparedStatement psts=null;
		ResultSet rs=null;
		ArrayList<info> ll=new ArrayList<info>();
		try {
			con=db.getCon();
			String sql="select * from population where nameOfhouseholder=?";
			psts=con.prepareStatement(sql);
			psts.setString(1, nameOfhouseholder);
			rs=psts.executeQuery();
			if(rs.next()){
				String residenceType = rs.getString("residenceType");
				String housingType=rs.getString("housingType");
				String housingArea=rs.getString("housingArea");
				String numberOfrooms=rs.getString("numberOfrooms");
				String idCard=rs.getString("idCard");
				String sex=rs.getString("sex");
				String nation=rs.getString("nation");
				String education=rs.getString("education");
				
				info activity=new info(residenceType,housingType,housingArea,numberOfrooms,nameOfhouseholder,idCard,sex,nation,education);
				ll.add(activity);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return ll;
	}
	

	//根据名称进行查询
		@SuppressWarnings("static-access")
		public static info selectName(String nameOfhouseholder) {
			//String tablename = "population";
			System.out.println("select info where nameOfhouseholder = "+nameOfhouseholder);
			info info=null;
			db db=new db();
			Connection con = db.getCon();
			try {
				Statement stm = con.createStatement();
				
				ResultSet rs = stm.executeQuery("select * from population where nameOfhouseholder='" + nameOfhouseholder + "'");
				
				if(rs.next())
				{
					info = new info();
					System.out.println("select the info from mysql");
					info.setResidenceType(rs.getString("residenceType"));
					info.setHousingType(rs.getString("housingType"));
					info.setHousingArea(rs.getString("housingArea"));
					info.setNumberOfrooms(rs.getString("numberOfrooms"));
					info.setNameOfhouseholder(rs.getString("nameOfhouseholder"));
					info.setIdCard(rs.getString("idCard"));
					info.setSex(rs.getString("sex"));
					info.setNation(rs.getString("nation"));
					info.setEducation(rs.getString("education"));
					
					System.out.println("name of the info is "+rs.getString("nameOfhouseholder"));
				}
				rs.close();
				stm.close();
				con.close();
				//db.close(rs,stm, con);
			}catch(Exception e) {
				e.printStackTrace();
			}
			return info;
		}
	
	public   int add(info activity){
		Connection con=null;
		PreparedStatement psts=null;
		int a=0;
		try {
			con=db.getCon();
			String sql="insert into population(residenceType,housingType,housingArea,numberOfrooms,nameOfhouseholder,idCard,sex,nation,education) values(?,?,?,?,?,?,?,?,?)";
			psts=con.prepareStatement(sql);
			psts.setString(1, activity.getResidenceType());
			psts.setString(2, activity.getHousingType());
			psts.setString(3, activity.getHousingArea());
			psts.setString(4, activity.getNumberOfrooms());
			psts.setString(5, activity.getNameOfhouseholder());
			psts.setString(6, activity.getIdCard());
			psts.setString(7, activity.getSex());
			psts.setString(8, activity.getNation());
			psts.setString(9, activity.getEducation());
			
			a=psts.executeUpdate();
			psts.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return a;
	
	}
    public  int delete(String nameOfhouseholder){
    	Connection con=null;
		PreparedStatement psts=null;
		int a=0;
		
		try {
			con=db.getCon();
			String sql="delete from population where idCard=?";
			psts=con.prepareStatement(sql);
			psts.setString(1, nameOfhouseholder);
			a=psts.executeUpdate();//记录影响的数据的数量
			psts.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return a;
    }	
    public int change(info activity){//修改
    	Connection con=null;
		PreparedStatement psts=null;
		int a=0;
		
		try {
			con=db.getCon();
			String sql="update population set residenceType=?housingType=?,housingArea=?,numberOfrooms=?,idCard=?,sex=?,nation=?,education=? where nameOfhouseholder=?";
			psts=con.prepareStatement(sql);
			psts.setString(9, activity.getNameOfhouseholder());
			psts.setString(1, activity.getResidenceType());
			psts.setString(2, activity.getHousingType());
			psts.setString(3, activity.getHousingArea());
			psts.setString(4, activity.getNumberOfrooms());
			psts.setString(5, activity.getIdCard());
			psts.setString(6, activity.getSex());
			psts.setString(7, activity.getNation());
			psts.setString(8, activity.getEducation());
			
			a=psts.executeUpdate();
			psts.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	
    	
    	return a;
    }
    
    
    
    @SuppressWarnings("static-access")
	public boolean update(info activity){
    	Connection con=null;
		PreparedStatement psts=null;
		int a=0;
		//Connection con=null;
		//PreparedStatement psts=null;
		//db db=new db();
		try {
			con=db.getCon();
			String sql="update population set idCard=?,sex=?,nation=?,education=? where nameOfhouseholder=?";
			
			psts=con.prepareStatement(sql);
			psts.setString(5, activity.getNameOfhouseholder());
			psts.setString(1, activity.getIdCard());
			psts.setString(2, activity.getSex());
			psts.setString(3, activity.getNation());
			psts.setString(4, activity.getEducation());
			System.out.print(sql);
			psts.executeUpdate();
			
			a=psts.executeUpdate();
			psts.close();
			con.close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
			//return false;
		}
		return true;
	}
    
    public  boolean findName(String nameOfhouseholder){//查找姓名
    	boolean flag=false;//找不到
    	Connection con=null;
		PreparedStatement psts=null;
		ResultSet rs=null;
		try {
			con=db.getCon();
			String sql="select * from population where nameOfhouseholder=?";
			psts=con.prepareStatement(sql);
			psts.setString(1, nameOfhouseholder);
			rs=psts.executeQuery();
			while(rs.next()){
				flag=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return flag;
    }
    public ArrayList<info> getAllinformation(){
    	Connection con=null;
		PreparedStatement psts=null;
		ResultSet rs=null;
		ArrayList<info> ll=new ArrayList<info>();
		try {
			con=db.getCon();
			String sql="select * from population";
			psts=con.prepareStatement(sql);
			rs=psts.executeQuery();//记录返回的结果
			while(rs.next()){
			
				String residenceType=rs.getString("residenceType");
				String housingType=rs.getString("housingType");
				String housingArea=rs.getString("housingArea");
				String numberOfrooms=rs.getString("numberOfrooms");
				String nameOfhouseholder=rs.getString("nameOfhouseholder");
				String idCard=rs.getString("idCard");
				String sex=rs.getString("sex");
				String nation=rs.getString("nation");
				String education=rs.getString("education");
				info activity = new info(residenceType,housingType,housingArea,numberOfrooms,nameOfhouseholder,idCard,sex,nation,education);
				ll.add(activity);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ll;
    }
    
    public static List<info> loadview(String sql) {
    	Connection con=null;
		PreparedStatement psts=null;

		System.out.println("loadview??sql:"+sql);
		String sql1="select * from population "+ sql;
		System.out.println("loadview??sql1:"+sql1);
		List<info> list =new ArrayList<info>();
		Connection conn = db.getCon();
		Statement state = null;
		ResultSet rs = null;
		info yi=null;
			try 
			{
				state = conn.createStatement();
				rs = state.executeQuery(sql1);
				while(rs.next()) 
				{
					
					String residenceType=rs.getString("residenceType");
					String housingType=rs.getString("housingType");
					String housingArea=rs.getString("housingArea");
					String numberOfrooms=rs.getString("numberOfrooms");
					String nameOfhouseholder=rs.getString("nameOfhouseholder");
					String idCard=rs.getString("idCard");
					String sex=rs.getString("sex");
					String nation=rs.getString("nation");
					String education=rs.getString("education");
					
					System.out.println("nameOfhouseholder"+nameOfhouseholder);
				 
					yi=new info(residenceType,housingType,housingArea,numberOfrooms,nameOfhouseholder,idCard,sex,nation,education);
					list.add(yi);
					System.out.println("name1"+yi.getNameOfhouseholder());
				}
			
				///db.close(rs, state, conn);
				rs.close();
				state.close();
				conn.close();
				
			} catch (SQLException e) {
				
				e.printStackTrace();
			} 

		return list;
	}
	
}
