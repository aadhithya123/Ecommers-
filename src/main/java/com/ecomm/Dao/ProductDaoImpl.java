package com.ecomm.Dao;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.modal.Product;
@Repository
@Transactional
public class ProductDaoImpl implements ProductDAO {
@Autowired
SessionFactory sessionFactory;
	public boolean addProduct(Product p) {
		Session session=sessionFactory.openSession();
		session.save(p);
		return true;
	}

	public Product find(int id) {
	Session session=sessionFactory.getCurrentSession();
	Product p=session.find(Product.class,id);
		return p;
	}

	public List<Product> getAllProduct() {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Product pe ");
		return query.getResultList();
	}

	public boolean deleteproduct(Product product) {
		Session session=sessionFactory.getCurrentSession();
		session.delete (product);
		return true;
	}
	public boolean updateproduct(Product product) {
		Session session=sessionFactory.getCurrentSession();
		session.update(product);
		return true;
	}

}
