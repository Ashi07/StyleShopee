package com.niit.fashionNyou.DAOImpl;

import java.util.List;


import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.fashionNyou.DAO.CartItemDao;
import com.niit.fashionNyou.model.CartItem;

@Repository("cartItemDao")
@Transactional
public class CartItemDaoImpl implements CartItemDao
{
    @Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	public boolean addCartItem(CartItem cartItem) 
	{
		try
	{
		sessionFactory.getCurrentSession().save(cartItem);
		return true;
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
		return false;
	}
		
	}

	@Override
	public boolean updateCartItem(CartItem cartItem) 
	{
		try
		{
			sessionFactory.getCurrentSession().update(cartItem);
			return true;
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean deleteCartItem(CartItem cartItem)
	{
		try
		{
			sessionFactory.getCurrentSession().delete(cartItem);
			return true;
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public List<CartItem> showCartItems(String username) 
	{
		try
		{
			Session session= sessionFactory.openSession();
			Query query=session.createQuery("from CartItem where username=:myusername and status='NA'");
			query.setParameter("myusername", username);
			List<CartItem> listItems=(List<CartItem>)query.list();
			session.close();
			return listItems;
		}
		
		catch(Exception e)
		{
			return null;
		}
	}

	@Override
	public CartItem getCartItem(int cartItemId)
	{
		Session session=sessionFactory.openSession();
		CartItem cartItem=(CartItem)session.get(CartItem.class,cartItemId);
		session.close();
		return cartItem;
	}

}
