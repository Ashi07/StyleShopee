package com.niit.fashionNyou.DAOImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.fashionNyou.DAO.SupplierDao;
import com.niit.fashionNyou.model.Product;
import com.niit.fashionNyou.model.Supplier;
import com.niit.fashionNyou.model.User;

@Repository("supplierDao")
@Transactional
public class SupplierDAOImpl implements SupplierDao
{
	@Autowired
    private SessionFactory sessionFactory;
	
	
	
	public boolean addSupplier(Supplier supplier) 
	{
		try
		{
		sessionFactory.getCurrentSession().save(supplier);
		return true;
	    }
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public boolean updateSupplier(Supplier supplier) 
	{

		try
		{
		sessionFactory.getCurrentSession().update(supplier);
		return true;
	    }
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public boolean deleteSupplier(Supplier supplier)
	{
		try
		{
		sessionFactory.getCurrentSession().delete(supplier);
		return true;
	    }
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public Supplier getSupplierBySupplierId(int supplierId)
	{

		try {
			Session session= sessionFactory.getCurrentSession();
			Supplier supplier=(Supplier) session.get(Supplier.class,supplierId);
			return  supplier;
		
		    }
		catch(Exception ex) 
		{
			ex.printStackTrace();
			return null;
		}
		
	}

	@Override
	public List<Supplier> getall() 
	{
		try
	 {
	 	Session session=sessionFactory.openSession();
	 	Query query=session.createQuery("from Supplier");
	 	List<Supplier> getall=query.list();
	 	return getall;
	 }
	 catch (Exception e) 
	 {
	 	return null;
	 	
	 }
	}
	

}
