package com.niit.fashionNyou.DAO;

import java.util.List;

import com.niit.fashionNyou.model.Category;


public interface CategoryDao 
{

	public boolean addCategory(Category category);
	public boolean updateCategory(Category category);
	public boolean deleteCategory(Category category);
	public Category getCategory(int categoryId);
	List<Category> list() ;
	
		
		
	
	
}
