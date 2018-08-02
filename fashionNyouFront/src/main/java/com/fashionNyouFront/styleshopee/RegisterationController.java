package com.fashionNyouFront.styleshopee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.fashionNyou.DAO.UserDao;
import com.niit.fashionNyou.model.User;

@Controller
public class RegisterationController 
{
	@Autowired
	UserDao userDao;
	
	@RequestMapping(value="/perform_registeration" ,method= RequestMethod.POST)
	public String Register(@RequestParam("name") String name,@RequestParam("emailId") String emailId,@RequestParam("mobileNo") String mobileNo,@RequestParam("password") String password,
			@RequestParam("enabled") String enabled,@RequestParam("role") String role)
	{
		User user=new User();
		user.setName(name);
		user.setPassword(password);
		user.setEmailId(emailId);
		user.setMobileNo(mobileNo);
		user.setEnabled(enabled);
		user.setRole(role);
		
		userDao.addUser(user);
		return "index";
	}
	

}
