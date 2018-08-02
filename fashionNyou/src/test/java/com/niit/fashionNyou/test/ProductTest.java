
package com.niit.fashionNyou.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.fashionNyou.DAO.ProductDao;
import com.niit.fashionNyou.DAO.SupplierDao;
import com.niit.fashionNyou.model.Product;
import com.niit.fashionNyou.model.Supplier;

public class ProductTest 
{
	private static AnnotationConfigApplicationContext context;
	private static ProductDao productDao;
	Product p=null;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception
	{
		context=new AnnotationConfigApplicationContext();
		context.scan("com.niit.fashionNyou");
		context.refresh();
		productDao=(ProductDao)context.getBean("productDao");
	}
	
	
	@Test
	public void testaddProduct()
	{
		p.setProductId(103);
		p.setProductName("bell sleeves top");
		p.setProductDesc("some description");
		p.setPrice(1500);
		p.setStock(26);
		p.setSupplierId(101);
		p.setCategoryId(101);
		assertTrue("could not add the supplier details",productDao.addProduct(p));
	}
	
	
   
	@Test
	public void testupdateProduct()
	{
		p=new Product();
		p.setProductId(102);
		p.setProductName("Ayush");
		p.setProductDesc("some description");
		p.setPrice(1500);
		p.setStock(26);
		p.setSupplierId(101);
		p.setCategoryId(101);
		assertTrue("could not update the supplier details",productDao.updateProduct(p));
	}
	
	
 
	@Test
	public void testdeleteProduct()
	{
		p=new Product();
		p.setProductId(102);
		
		assertTrue("could not delete the supplier details",productDao.deleteProduct(p));
	}
	
	

	@Test
	public void testListProduct()
	
	{
		List<Product> listall=productDao.listall();			
		assertTrue("could not fetched the list of products from the table!",listall.size()>0);
		
	
	}
	
	
	@Test
	public void testgetproduct()
	{
		p=productDao.getProduct(11);
		assertNotNull("could no get the deatils",p.getClass());
	}
	

}

