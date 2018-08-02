package com.niit.fashionNyou.DAOImpl;

import java.util.List;




import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.fashionNyou.DAO.CategoryDao;
import com.niit.fashionNyou.model.Category;


@Repository("categoryDao")
@Transactional
public class CategoryDAOImpl implements CategoryDao
{
	@Autowired
	private SessionFactory sessionFactory;
	 

	public boolean addCategory(Category category) 
	{
		try
		{
			sessionFactory.getCurrentSession().save(category);
			return true;
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public boolean updateCategory(Category category) 
	{
		try
		{
			sessionFactory.getCurrentSession().update(category);
			return true;
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}	
		
	}

	public boolean deleteCategory(Category category)
	{
		try
		{
			sessionFactory.getCurrentSession().delete(category);
			return true;
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public Category getCategory(int categoryId) 
	{
		try
		{
			Session session=sessionFactory.getCurrentSession();
			Category category=session.get(Category.class,categoryId);
			return category;
			
			 //return sessionFactory.getCurrentSession().get(Category.class,categoryId);
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
			
		}
	}
	
public List<Category> list() 
{ 
	try
{
	Session session=sessionFactory.openSession();
	Query query=session.createQuery("from Category");
    List<Category> listCategories=query.list();
	return listCategories;
}
catch (Exception e) 
{
	return null;
	// TODO: handle exception
}
}
		
	}
	


