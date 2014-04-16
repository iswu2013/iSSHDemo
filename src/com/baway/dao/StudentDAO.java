package com.baway.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class StudentDAO extends HibernateDaoSupport implements DAOInterface {

	public void addObject(Object o) {
		// TODO Auto-generated method stub
		System.out.println("----------addObject-------------");
		this.getHibernateTemplate().save(o);
	}

	public void delObject(Object o) {
		// TODO Auto-generated method stub
		System.out.println("----------delObject-------------");
		this.getHibernateTemplate().delete(o);
	}

	public List findAll() {
		
		System.out.println("----------findAll-------------");
		return this.getHibernateTemplate().find("from Student");
	}

	public List findById(int id) {
		// TODO Auto-generated method stub
		System.out.println("----------findById-------------");
		return this.getHibernateTemplate().find("from Student s where s.id="+id);
	}

	public void updObject(Object o) {
		// TODO Auto-generated method stub
		System.out.println("----------updObject-------------");
        this.getHibernateTemplate().update(o);
	}

}
