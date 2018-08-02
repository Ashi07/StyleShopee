package com.niit.fashionNyou.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Category
{
	@Id
	@GeneratedValue
	private int categoryId;
	private String categoryName;
	private String categoryType;
	
	
	public int getCategoryId()
	{
		return categoryId;
	}
	
	
	
	public void setCategoryId(int categoryId) 
	{
		this.categoryId = categoryId;
	}
	
	
	
	public String getCategoryName() 
	{
		return categoryName;
	}
	
	
	
	public void setCategoryName(String categoryName)
	{
		this.categoryName = categoryName;
	}



	public String getCategoryType() 
	{
		return categoryType;
	}



	public void setCategoryType(String categoryType) 
	{
		this.categoryType = categoryType;
	}
	
	
	
	

}
