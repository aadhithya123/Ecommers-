package com.ecomm.Dao;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.modal.Category;
@Repository
@Transactional
public class CategoryDaoImpl implements CategoryDAO {
@Autowired
SessionFactory sessionFactory;

	public boolean addCategory(Category c) {
		Session session=sessionFactory.getCurrentSession();
		System.out.println("sessioncreated");
		session.save(c);
		//session.flush();
		return true;
	}

	public Category find(int id) {
	Session session=sessionFactory.getCurrentSession();
	Category c=session.find(Category.class, id);
		return c;
	}

	public List<Category> getAllCategory() {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Category ce");
		return query.getResultList();
	}
	public boolean updatecategory(Category category) {
		Session session=sessionFactory.getCurrentSession();
		  session.update(category);
		  return true;
	}
	public boolean deleteCategory(Category category) {
		Session session=sessionFactory.getCurrentSession();
	    session.delete(category);
			return true;
	}
}
