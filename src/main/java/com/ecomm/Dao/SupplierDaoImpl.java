package com.ecomm.Dao;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.modal.Supplier;
@Repository
@Transactional
public class SupplierDaoImpl implements SupplierDAO {
@Autowired
SessionFactory sessionFactory;
	public boolean addSupplier(Supplier s) {
		try{
		Session session=sessionFactory.getCurrentSession();
		session.save(s);
		}
		catch(Exception e){
			System.out.println(e);
		}
		return true;
	}

	public Supplier find(int id){
		
		Session session=sessionFactory.getCurrentSession();
		Supplier s=session.find(Supplier.class, id);
		return s;
			
	}

	public List<Supplier> getAllSupplier() {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Supplier se");
	    return query.getResultList();
		
	}
	
	public boolean updatesupplier(Supplier supplier) {
		try {
			Session session=sessionFactory.getCurrentSession();
			session.update(supplier);
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return true;
	}

	public boolean deletesupplier(Supplier supplier) {
		try{
			Session session=sessionFactory.getCurrentSession();
			session.delete(supplier);
			}
			catch(Exception e){
				System.out.println(e);	
			}
			return true;		
	}

}
