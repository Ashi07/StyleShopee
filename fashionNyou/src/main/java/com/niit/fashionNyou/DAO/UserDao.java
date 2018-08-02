package com.niit.fashionNyou.DAO;

import com.niit.fashionNyou.model.User;

public interface UserDao
{
	public boolean addUser(User user);
	public boolean updateUser(User user);
	public boolean deleteUser(User user);
	public User getUserByUserId(int UId);
	

}
