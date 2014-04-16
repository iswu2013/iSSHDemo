package com.baway.dao;

import java.util.List;

public interface DAOInterface {
	
	
	public void addObject(Object o);
	public void updObject(Object o);
	public void delObject(Object o);
	public List findById(int id);
	public List findAll();


}
