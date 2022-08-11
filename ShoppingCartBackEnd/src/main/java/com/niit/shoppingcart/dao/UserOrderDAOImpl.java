package com.niit.shoppingcart.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.UserOrder;

@Repository("userOrderDAO")
public class UserOrderDAOImpl implements UserOrderDAO {
	

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	
	
	public void saveOrUpdate(UserOrder userOrder) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(userOrder);
		
		
	}
	
	
	
	

}
