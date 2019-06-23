package com.ecomm.modal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class OrderDetails {
	@Id
	@GeneratedValue
private int orderid;
private String username;
private String cartdetails;
public int getOrderid() {
	return orderid;
}
public void setOrderid(int orderid) {
	this.orderid = orderid;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getCartdetails() {
	return cartdetails;
}
public void setCartdetails(String cartdetails) {
	this.cartdetails = cartdetails;
}
}