package com.ecomm.modal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class ShippingAddress {
	@Id
	@GeneratedValue
private int shippingid;
private int userid;
private int cartid;
private String useraddress;
public int getShippingid() {
	return shippingid;
}
public void setShippingid(int shippingid) {
	this.shippingid = shippingid;
}
public int getUserid() {
	return userid;
}
public void setUserid(int userid) {
	this.userid = userid;
}
public int getCartid() {
	return cartid;
}
public void setCartid(int cartid) {
	this.cartid = cartid;
}
public String getUseraddress() {
	return useraddress;
}
public void setUseraddress(String useraddress) {
	this.useraddress = useraddress;
}

}
