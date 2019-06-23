package com.ecomm.modal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class BillingDetails {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
private int billingid;
private int cartid;
private int productprice;
private Long cardnumber;
public int getBillingid() {
	return billingid;
}
public void setBillingid(int billingid) {
	this.billingid = billingid;
}
public int getCartid() {
	return cartid;
}
public void setCartid(int cartid) {
	this.cartid = cartid;
}
public int getProductprice() {
	return productprice;
}
public void setProductprice(int productprice) {
	this.productprice = productprice;
}
public Long getCardnumber() {
	return cardnumber;
}
public void setCardnumber(Long crd) {
	this.cardnumber = crd;
}}
