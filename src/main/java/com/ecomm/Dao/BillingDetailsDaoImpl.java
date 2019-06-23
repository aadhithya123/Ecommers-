package com.ecomm.Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.modal.BillingDetails;
@Repository
@Transactional
public class BillingDetailsDaoImpl implements BillingDetailsDAO {
@Autowired
SessionFactory sessionFactory;
	@Override
	public boolean insertBillingDetails(BillingDetails billingdetails) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(billingdetails);
		
		return true;
	}
	@Override
	public BillingDetails getBillingDetails(int billingid) {
		Session session=sessionFactory.getCurrentSession();
		BillingDetails b=session.find(BillingDetails.class ,billingid);
		return b;
	}

}
