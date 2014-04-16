package com.baway.action;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.baway.service.ServiceInterface;
import com.baway.vo.Student;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

public class StudentAction implements ModelDriven<Student> {
	
	private ServiceInterface  ss;
	private Student student =new Student();
	public Student getModel() {
	
		return student;
	}

	public ServiceInterface getSs() {
		return ss;
	}

	public void setSs(ServiceInterface ss) {
		this.ss = ss;
	}
	public String add(){
		ss.addObject(student);
		
		return "add";
	}
	public String printall(){
		List list=ss.findAll();
		ActionContext context=ActionContext.getContext();
		Map map=(Map)context.get("request");
		map.put("list",list);
		return "printall";
	}
    public String findId(){
		List list=ss.findById(student.getId());
	
		ActionContext context=ActionContext.getContext();
		Map map=(Map)context.get("request");
		map.put("s",list);
		
		return "findId";
	}
   public String xiugai(){
	  
	    ss.updObject(student);
	return "xiugai";
   }
	public String del(){
		ss.delObject(student);
		return "del";
   }

}
