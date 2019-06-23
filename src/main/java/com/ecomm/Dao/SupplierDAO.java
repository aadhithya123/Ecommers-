package com.ecomm.Dao;
import java.util.List;

import com.ecomm.modal.Supplier;

public interface SupplierDAO {
	
public boolean addSupplier(Supplier s);
public Supplier find(int id);
public List<Supplier>getAllSupplier();
public boolean updatesupplier(Supplier supplier);
public boolean deletesupplier(Supplier supplier);
}
