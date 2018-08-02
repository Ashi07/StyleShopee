package com.niit.fashionNyou.test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.fashionNyou.DAO.UserDao;
import com.niit.fashionNyou.model.User;

public class UserTest 
{
	private static AnnotationConfigApplicationContext context;
	private static UserDao userDao;
	private User u=null;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception
	{
		context=new AnnotationConfigApplicationContext();
		context.scan("com.niit.fashionNyou");
		context.refresh();
		userDao=(UserDao)context.getBean("userDao");
		
		
	}
	
	@Test
	public void testaddUser()
	{
		u=new User();
		u.setUId(106);
		u.setName("ashi");
		u.setPassword("456ashi");
		u.setEmailId("ashii76@gmail.com");
		u.setMobileNo("9692407553");
		assertTrue("could not save the user details", userDao.addUser(u));
		
		
	}
	
	
	
	@Test
	public void testupdateUser()
	{
		u=new User();
		u.setUId(105);
		u.setName("ayush");
		u.setPassword("ashu123");
		u.setEmailId("ashu134@gmail.com");
		u.setMobileNo("8795268151");
		assertTrue("could not save the employee details", userDao.updateUser(u));
	}
	
	
	@Test
	public void testdeleteUser()
	{
		u=new User();
		u.setUId(104);
		assertTrue("could not save the employee details", userDao.deleteUser(u));
		
	}
	
	
	
	
	

}
