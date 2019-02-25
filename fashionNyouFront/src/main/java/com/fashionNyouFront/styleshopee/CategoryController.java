
package com.fashionNyouFront.styleshopee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.fashionNyou.DAO.CategoryDao;
import com.niit.fashionNyou.model.Category;
import com.niit.fashionNyou.model.Product;

@Controller
public class CategoryController 
{
	@Autowired
	CategoryDao categoryDao;
	
	boolean flag=false;
	

	@RequestMapping(value="/category")
	public String ShowCategory(Model m)
	{
		flag=false;
		List<Category> listcategories=categoryDao.list();
		m.addAttribute("categorylist",listcategories);
		
		return "category";
		
	}
	
	
	@RequestMapping(value="/InsertCategory",method=RequestMethod.POST)
	public String InsertCategory(@RequestParam("categoryName")String categoryName,@RequestParam("categoryType")String categoryType,Model m)
	{	
	
		
		Category category=new Category();
		
		category.setCategoryName(categoryName);
		category.setCategoryType(categoryType);
		
		categoryDao.addCategory(category);
	
        List<Category> listcategories=categoryDao.list();
		m.addAttribute("categorylist",listcategories);
		
		
		   
		return "category";
	   }
		
	
	@RequestMapping(value="/deletecategory/{categoryId}")
	public String deleteCategory(@PathVariable("categoryId") int categoryId,Model m)
	{
		flag=false;
		Category category=categoryDao.getCategory(categoryId);
		categoryDao.deleteCategory(category);
		List<Category> listcategories=categoryDao.list();
		m.addAttribute("categorylist",listcategories);
		return "category";
	}
	
	
	@RequestMapping(value="/editcategory/{categoryId}")
	public String editCategory(@PathVariable("categoryId") int categoryId,Model m)
	{
		flag=true;
		Category category=categoryDao.getCategory(categoryId);
		m.addAttribute("categoryData",category);
		m.addAttribute("flag",flag);
		
		return "category";
	}
	
	@RequestMapping(value="/UpdateCategory",method=RequestMethod.POST)
	public String UpdateCategory(@RequestParam("categoryId")int categoryId,@RequestParam("categoryName")String categoryName,@RequestParam("categoryType")String categoryType,Model m)
	{	

		
		Category category=categoryDao.getCategory(categoryId);
		
		category.setCategoryName(categoryName);
		category.setCategoryType(categoryType);
		
		categoryDao.updateCategory(category);
	
        List<Category> listcategories=categoryDao.list();
		m.addAttribute("categorylist",listcategories);
		
		
		   
		return "category";
	   }
	

}
