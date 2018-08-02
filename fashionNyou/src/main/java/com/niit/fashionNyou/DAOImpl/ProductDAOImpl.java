package com.niit.fashionNyou.DAOImpl;

import java.util.List;


import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.fashionNyou.DAO.ProductDao;
import com.niit.fashionNyou.model.Category;
import com.niit.fashionNyou.model.Product;
import com.niit.fashionNyou.model.Supplier;

@Repository("productDao")
@Transactional
public class ProductDAOImpl implements ProductDao
{

	@Autowired
    private SessionFactory sessionFactory;
	
	public boolean addProduct(Product product)
	{
		try
		{
		sessionFactory.getCurrentSession().save(product);
		return true;
	    }
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public boolean updateProduct(Product product)
	{
		try
		{
		sessionFactory.getCurrentSession().update(product);
		return true;
	    }
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public boolean deleteProduct(Product product) 
	{
		try
		{
		sessionFactory.getCurrentSession().delete(product);
		return true;
	    }
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public Product getProduct(int productId)
	{
		try {
			Session session=sessionFactory.getCurrentSession();
			Product product=session.get(Product.class, productId);
			return product;
			// return sessionFactory.getCurrentSession().get(Product.class,productId);
			 
		    }
		catch(Exception ex) 
		{
			ex.printStackTrace();
			return null;
		}
		
	}

	
	public List<Product> listall() {
		try
		 {
		 	Session session=sessionFactory.openSession();
		 	Query query=session.createQuery("from Product");
		 	List<Product> listall=query.list();
		 	return listall;
		 }
		 catch (Exception e) 
		 {
		 	return null;
		 	
		 }
	}

	
	
	

}
