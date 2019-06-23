package com.ecomm.Dao;

import java.util.List;

import com.ecomm.modal.Cart;
import com.ecomm.modal.OrderDetails;

public interface CartDAO {
public boolean addtocart(Cart cart);
public boolean updatecart(Cart cart);
public boolean deletecart(Cart cart);
public Cart getCartitem(int cartid);
List<Cart> getAllcartitems(String username);
public boolean confirmCart(String username);
public boolean saveOrder(OrderDetails c);
public String getOrder(String cartitem);
}
