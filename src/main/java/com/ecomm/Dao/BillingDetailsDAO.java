package com.ecomm.Dao;

import com.ecomm.modal.BillingDetails;

public interface BillingDetailsDAO {
	public boolean insertBillingDetails(BillingDetails billingdetails);
	public BillingDetails getBillingDetails(int  billingid);
}
