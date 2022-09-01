package service;

import java.util.ArrayList;
import java.util.List;

import bean.dao;
import bean.info;

public class Service {
	static dao dao=new dao();
	public static Boolean add(info activity) {
		if(dao.findName(activity.getNameOfhouseholder())==true) {
			System.out.print("已存在");
			return false;
		}
		else{
			dao.add(activity);
			return true;
		}
	}
	public static Boolean delete(info activity) {
		if(dao.findName(activity.getNameOfhouseholder())==true) {
			dao.delete(activity.getNameOfhouseholder());
			System.out.print("此信息已经删除");
			return true;
		}
		else {
			System.out.print("该信息不存在");
			return false;
		}
		
		
	}
	public static Boolean update(info activity) {
		if(dao.findName(activity.getNameOfhouseholder())==true) {
			dao.change(activity);
			System.out.print("修改成功");
			return true;
		}
		else {
			System.out.println("修改失败");
			return false;
		}
		
	}
	public static ArrayList<info> search(info activity) {
		if(dao.findName(activity.getNameOfhouseholder())==true) {
			ArrayList<info> activity1=dao.select(activity.getNameOfhouseholder());
			//System.out.print(course1.getClassroom()+"  "+course1.getName()+"  "+course1.getTeacher());
			return activity1;
		}
		else {
			System.out.print("未找到");
			return null;
		}
			
	}
	public static List<info> list() {	
		return dao.getAllinformation();
	}
}

