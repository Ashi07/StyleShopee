package com.niit.fashionNyou.DAOImpl;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.fashionNyou.DAO.OrderDetailDao;
import com.niit.fashionNyou.model.OrderDetail;


@Repository("orderDetailDao")
@Transactional
public class OrderDetailImpl implements OrderDetailDao
{
    @Autowired
    SessionFactory sessionFactory;
	
	public boolean InsertOrderDetail(OrderDetail orderDetail) 
	{
		try
		{
			sessionFactory.getCurrentSession().save(orderDetail);
			return true;
		}
		
		catch(Exception e)
		{
			
			return false;
			
		}
	}
	
	public boolean UpdateOrderDetail(String username)
	{
		try
		{
			Session session=sessionFactory.getCurrentSession();
			Query query=session.createQuery("Update CartItem set status='P' where username=:myusername and status='NA'");
			query.setParameter("myusername", username);
			int row_eff=query.executeUpdate();
			if(row_eff>0)
			
				return true;
			
			else
				return false;
		}
		catch(Exception e)
		{
			return false;
		}
	}
	
			
			
			
			
			
		
	}
	

