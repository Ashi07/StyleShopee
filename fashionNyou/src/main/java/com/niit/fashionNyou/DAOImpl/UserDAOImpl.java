package com.niit.fashionNyou.DAOImpl;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.niit.fashionNyou.DAO.UserDao;
import com.niit.fashionNyou.model.User;

@Repository("userDao")
@Transactional
public class UserDAOImpl implements UserDao
{
	@Autowired
    private SessionFactory sessionFactory;
    
    
	public boolean addUser(User user) 
	{
		try
		{
		sessionFactory.getCurrentSession().save(user);
		return true;
	    }
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public boolean updateUser(User user)
	{
		try
		{
		sessionFactory.getCurrentSession().update(user);
		return true;
	    }
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public boolean deleteUser(User user)
	{
		try
		{
		sessionFactory.getCurrentSession().delete(user);
		return true;
	    }
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	public User getUserByUserId(int UId)
	{
		
		try {
			Session session= sessionFactory.getCurrentSession();
			User user=(User) session.get(User.class,UId);
			session.close();
			return user;
		
			
			
		    }
		catch(Exception ex) 
		{
			ex.printStackTrace();
			return null;
		}
	}
	

}
