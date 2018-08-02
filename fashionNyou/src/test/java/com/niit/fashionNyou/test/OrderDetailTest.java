package com.niit.fashionNyou.test;

import static org.junit.Assert.*;


import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.fashionNyou.DAO.OrderDetailDao;
import com.niit.fashionNyou.model.OrderDetail;

public class OrderDetailTest
{
	private static AnnotationConfigApplicationContext context;
	 static OrderDetailDao orderDetailDao;
	 OrderDetail orderDetail=null;
	

	@BeforeClass
	public static void setUpBeforeClass() throws Exception
	{

		context=new AnnotationConfigApplicationContext();
		context.scan("com.niit.fashionNyou");
		context.refresh();
		orderDetailDao=(OrderDetailDao)context.getBean("orderDetailDao");
		
	}
    
	@Ignore
	@Test
	public void insertOrdertest()
	{
		  orderDetail=new OrderDetail();
		 orderDetail.setOrderdate(new java.util.Date());
		 orderDetail.setPaymentMode("CC");
		 orderDetail.setUsername("ashi");
		 orderDetail.setTotalPurchaseAmount(4000);
		 assertTrue("problem in inserting the order!!", orderDetailDao.InsertOrderDetail(orderDetail));
		
	}
	
	
	@Test
	public void updateOrderTest()
	{
		assertTrue("problem in updating the order!!",orderDetailDao.UpdateOrderDetail("ashi"));
	}

}
