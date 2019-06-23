package com.ecomm.Dao;

import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecomm.modal.Cart;
import com.ecomm.modal.OrderDetails;
@Repository
@Transactional
public class CartDaoImpl implements CartDAO{
@Autowired
SessionFactory sessionFactory;
	@Override
	public boolean addtocart(Cart cart) {
		Session session=sessionFactory.getCurrentSession();
		session.save(cart);
		return true;
	}

	@Override
	public boolean updatecart(Cart cart) {
		Session session=sessionFactory.getCurrentSession();
		session.delete(cart);
		return true;
	}

	@Override
	public boolean deletecart(Cart cart) {
      Session session=sessionFactory.getCurrentSession();
      session.delete(cart);
		return true;
	}

	@Override
	public List<Cart> getAllcartitems(String username){
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Cart ce");
		return query.getResultList();
	}
	@Override
	public Cart getCartitem(int cartid) {
		Session session=sessionFactory.getCurrentSession();
		Cart cart=(Cart)session.get(Cart.class,cartid);
		return cart;
	}

	@Override
	public boolean confirmCart(String username) {
		Session session=sessionFactory.getCurrentSession();
		List<Cart> cartlist=getAllcartitems(username);
		for(Cart c:cartlist)
		{
			c.setStatus("Y");
		}
		return true;
	}

	@Override
	public boolean saveOrder(OrderDetails c) {
		Session session=sessionFactory.getCurrentSession();
		session.save(c);
		return true;
	}

	@Override
	public String getOrder(String cartitem) {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from OrderDetails o where o.cartdetails='"+cartitem+"'");
		return ((OrderDetails)query.getResultList().get(1)).getCartdetails();
	}
}
