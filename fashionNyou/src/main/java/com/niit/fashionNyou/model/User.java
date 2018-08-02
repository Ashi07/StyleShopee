package com.niit.fashionNyou.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class User
{
	@Id
	private int UId;
	
	private String name;
	private String emailId;
	private String password;
	private String mobileNo;
	private String role;
	private String enabled;
	
	
	public int getUId() 
	{
		return UId;
	}
	
	public void setUId(int uId) 
	{
		UId = uId;
	}
	
	public String getName() 
	{
		return name;
	}
	
	public void setName(String name)
	{
		this.name = name;
	}
	
	public String getEmailId()
	{
		return emailId;
	}
	
	public void setEmailId(String emailId)
	{
		this.emailId = emailId;
	}
	
	public String getPassword() 
	{
		return password;
	}
	
	public void setPassword(String password)
	{
		this.password = password;
	}
	
	public String getMobileNo()
	{
		return mobileNo;
	}
	
	public void setMobileNo(String mobileNo)
	{
		this.mobileNo = mobileNo;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getEnabled() {
		return enabled;
	}

	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}

}
