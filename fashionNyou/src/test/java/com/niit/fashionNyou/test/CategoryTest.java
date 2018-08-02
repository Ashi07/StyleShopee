package com.niit.fashionNyou.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.fashionNyou.DAO.CategoryDao;
import com.niit.fashionNyou.model.Category;

public class CategoryTest 
{
	private static AnnotationConfigApplicationContext context;
	private static CategoryDao categoryDao;
	private Category c=null;
	
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception
	{
		context=new AnnotationConfigApplicationContext();
		context.scan("com.niit.fashionNyou");
		context.refresh();
		categoryDao=(CategoryDao)context.getBean("categoryDao");
		
		
	}
	
	@Ignore
	@Test
	public void testaddCategory()
	{
		c=new Category();
		
		c.setCategoryName("ethic");
		c.setCategoryType("kurtis");
		assertTrue("could not save the category details", categoryDao.addCategory(c));
		
	}
	
	
	@Ignore
	@Test
	public void testupdateCategory()
	{
		c=new Category();
		c.setCategoryId(101);
		c.setCategoryName("western wear");
		c.setCategoryType("tops");
		assertTrue("could not update the category details", categoryDao.updateCategory(c));
		
	}
	
	
	@Ignore
	@Test
	public void testdeleteCategory()
	{
		c=new Category();
		c.setCategoryId(101);
		
		assertTrue("could not save the category details", categoryDao.deleteCategory(c));
		
	}
	
	@Test
	public void testListCategory() 
	{
					
		
		assertEquals("could not fetched the list of categories from the table!",categoryDao.list());
		System.out.println(categoryDao.list());
		
		
	}
	
	@Test
	public void testgetcategory()
	 {
		c=categoryDao.getCategory(5);
		
		 assertNotNull("Could not fetch the category from table", c.getClass());
	 }
	
	
	
	
	
	
	

}
