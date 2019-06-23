package com.ecomm.Dao;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.modal.User;
import com.ecomm.modal.User_Roll;
@Repository
@Transactional
public class UserDaoImpl implements UserDAO {
@Autowired
SessionFactory sessionFactory;

	public boolean addUser(User user) {
		try{
		Session session=sessionFactory.openSession();
		session.save(user);				
		}
		catch(Exception e){
			System.out.println(e);
		}
		return true;
	}
	public User find(int id) {
		
		Session session=sessionFactory.getCurrentSession();
		User user=session.find(User.class,id);	
		return user;
	}

	public List<User> getAllUser() {
		
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from User u");
		return query.getResultList();
	}
	public boolean deleteUser(User u) {
		try{
		Session session=sessionFactory.getCurrentSession();
		session.delete(u);
		}
		catch (Exception e){
			System.out.println(e);		
	}
		return true;
}
	@Override
	public boolean updateUser(User u) {
		Session session=sessionFactory.getCurrentSession();
		session.update(u);
		return true;
	}
	@Override
	public boolean addUser_Roll(User_Roll user_roll) {
		Session session=sessionFactory.getCurrentSession();
		session.save(user_roll);
		return true;
	}
	@Override
	public User getUserByName(String username) {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from User u where u.username='"+username+"'");
		List<User>userlist=query.getResultList();
		User u=userlist.get(0);
		return u;
	}
	@Override
	public User getUserByPhone(Long userphone) {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from User u where u.userphone='"+userphone+"'");
		List<User>userlist=query.getResultList();
		User u1=userlist.get(0);
		return u1;
	}
}
