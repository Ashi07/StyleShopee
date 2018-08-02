package com.niit.fashionNyou.DAO;

import java.util.List;

import com.niit.fashionNyou.model.Supplier;
import com.niit.fashionNyou.model.User;

public interface SupplierDao 
{
	public boolean addSupplier(Supplier supplier);
	public boolean updateSupplier(Supplier supplier);
	public boolean deleteSupplier(Supplier supplier);
	public Supplier getSupplierBySupplierId(int supplierId);
	List<Supplier> getall();

}
