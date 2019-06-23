package com.ecomm.Dao;

import com.ecomm.modal.OrderDetails;

public interface OrderDetailsDAO {
	public void addOrderDetails(OrderDetails orderDetails);
	public OrderDetails getOrderDetails(String username);
}
