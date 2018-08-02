package com.niit.fashionNyou.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.fashionNyou.DAO.CartItemDao;
import com.niit.fashionNyou.model.CartItem;

public class cartTest {


	private static AnnotationConfigApplicationContext context;
	private static CartItemDao cartItemDao;
	private CartItem c=null;

	

	@BeforeClass
	public static void setUpBeforeClass() throws Exception
	{
		context=new AnnotationConfigApplicationContext();
		context.scan("com.niit.fashionNyou");
		context.refresh();
		cartItemDao=(CartItemDao)context.getBean("cartItemDao");
	}
	
	@Ignore
	@Test
	public void testaddCartItem()
	{
		c=new CartItem();
		
		c.setProductId(45);
		c.setProductName("off-shoulder white top");
		c.setPrice(1500);
		c.setQuantity(5);
		c.setStatus("NA");
		c.setUsername("ashi");
		
		assertTrue("could not save the cartItem details", cartItemDao.addCartItem(c));
		
	}
	
	@Ignore
	@Test
	public void testupdateCartItem()
	{
		c=new CartItem();
		
		c.setProductId(46);
		c.setQuantity(6);
		assertTrue("could not save the cartItem details", cartItemDao.updateCartItem(c));
		
	}
	
	@Ignore
	@Test
	public void testdeleteCartItem()
	{
		c=new CartItem();
		c.setCartItemId(1);
		
		assertTrue("could not save the cartItem details", cartItemDao.deleteCartItem(c));
		
	}
	
	@Test
	public void testListCartItem() 
	{
		List<CartItem> cartItems=cartItemDao.showCartItems("ashi");		
		
		assertEquals("could not fetched the list of cartitem from the table!",cartItems.size()>0);
		for(CartItem cartItem:cartItems)
		{
			System.out.println(cartItem.getProductName()+":::");
			System.out.println(cartItem.getQuantity()+":::");
			System.out.println(cartItem.getPrice()+":::");
		    System.out.println(cartItem.getStatus()+":::");
		}
	
	}
	
	@Test
	public void getcartItem()
	{
		CartItem cartItem=cartItemDao.getCartItem(77);
		assertNotNull("problem in getting details", cartItem);
		System.out.println(cartItem.getCartItemId()+":::");
		System.out.println(cartItem.getProductName()+":::");
		System.out.println(cartItem.getQuantity()+":::");
		System.out.println(cartItem.getStatus()+":::");
		
	}

}
