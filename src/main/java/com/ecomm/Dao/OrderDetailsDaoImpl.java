package com.ecomm.Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.ecomm.modal.OrderDetails;

@Repository
@Transactional
public class OrderDetailsDaoImpl implements OrderDetailsDAO {
	@Autowired
	SessionFactory sessionFactory;
	public void addOrderDetails(OrderDetails orderDetails) {
		
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(orderDetails);
	}
	public OrderDetails getOrderDetails(String username) {
		Session session=sessionFactory.getCurrentSession();
		OrderDetails orderDetails=(OrderDetails)session.get(OrderDetails.class,username);
		return orderDetails;
	}
}
