package com.niit.fashionNyou.test;

import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.fashionNyou.DAO.SupplierDao;
import com.niit.fashionNyou.model.Product;
import com.niit.fashionNyou.model.Supplier;

public class SupplierTest
{
	private static AnnotationConfigApplicationContext context;
	private static SupplierDao supplierDao;
	private Supplier s=null;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception
	{
		context=new AnnotationConfigApplicationContext();
		context.scan("com.niit.fashionNyou");
		context.refresh();
		supplierDao=(SupplierDao)context.getBean("supplierDao");
	}
	
	
	@Test
	public void testaddSupplier()
	{
		s=new Supplier();
		
		s.setSupplierName("Ayush");
		s.setSupplierDesc("some description");
		s.setRatings(4);
		assertTrue("could not add the supplier details",supplierDao.addSupplier(s));
	}
	
    @Ignore
	@Test
	public void testupdateSupplier()
	{
		s=new Supplier();
		s.setSupplierId(101);
		s.setSupplierName("pragya");
		s.setSupplierDesc("some description");
		s.setRatings(4);
		assertTrue("could not update the supplier details",supplierDao.updateSupplier(s));
		
	}
	
    @Ignore
	@Test
	public void testdeleteSupplier()
	{
		s=new Supplier();
		s.setSupplierId(101);
		assertTrue("could not delete the supplier details",supplierDao.deleteSupplier(s));
		
	}
	
    public void testListSupplier()
	
	{
		List<Supplier> getall=supplierDao.getall();			
		assertTrue("could not fetched the list of products from the table!",getall.size()>0);
		
	
	}
		
	

}
