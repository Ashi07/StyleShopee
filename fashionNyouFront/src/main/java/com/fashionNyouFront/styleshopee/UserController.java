package com.fashionNyouFront.styleshopee;

import java.util.Collection;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.fashionNyou.DAO.ProductDao;

@Controller
public class UserController 
{
	@Autowired
	ProductDao productDao;


	@RequestMapping("/login_success")
	public String loginSuccess(Model m,HttpSession session)
	{
		String page="";
		boolean loggedin = false;
		SecurityContext securitycontext = SecurityContextHolder.getContext();
		Authentication auth = securitycontext.getAuthentication();
		String username = auth.getName();
		Collection<GrantedAuthority> roles = (Collection<GrantedAuthority>) auth.getAuthorities();
		for(GrantedAuthority role:roles)
		{
			session.setAttribute("role",role.getAuthority());
			if(role.getAuthority().equals("ROLE_USER"))
			{
				loggedin=true;
				page="productDisplay";
				m.addAttribute("productlist", productDao.listall());
				session.setAttribute("loggedin",loggedin);
				session.setAttribute("username", username);
			}
			else
			{
				loggedin=true;
				page="admin";
				session.setAttribute("loggedin",loggedin);
				session.setAttribute("username", username);
			}
		}
		
		return  page;
	}
}
