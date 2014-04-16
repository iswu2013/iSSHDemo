package com.baway.service;

import java.util.List;

import com.baway.dao.DAOInterface;
import com.baway.vo.Student;


public class StudentService implements ServiceInterface {

	
	DAOInterface  dao1;
	
	
	public DAOInterface getDao() {
		return dao1;
	}

	public void setDao1(DAOInterface dao1) {
		this.dao1 = dao1;
	}	
	
	public StudentService(){
		
		
	}
	
	public StudentService(DAOInterface  dao){
		
		this.dao1 = dao;
	}

	public void addObject(Object o) {
	
		dao1.addObject(o);
	}

	public void delObject(Object o) {
		
		dao1.delObject(o);
	}

	public List findAll() {
		
		
		return dao1.findAll();
	}

	public List findById(int id) {
		
		return dao1.findById(id);
	}

	public void updObject(Object o) {
		
		dao1.updObject(o);
	}

	

}
