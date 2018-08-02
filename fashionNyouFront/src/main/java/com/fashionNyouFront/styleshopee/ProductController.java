package com.fashionNyouFront.styleshopee;

import java.io.BufferedOutputStream;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.multipart.MultipartFile;

import com.niit.fashionNyou.DAO.CategoryDao;
import com.niit.fashionNyou.DAO.ProductDao;
import com.niit.fashionNyou.model.Product;

@Controller
public class ProductController {
	
	@Autowired
	ProductDao productDao;
	@Autowired
	CategoryDao categoryDao;

	boolean flag=false ;

	@RequestMapping(value ="/Product")
	public String ShowProduct(Model m) {
		flag=false;
		List<Product> listProducts = productDao.listall();
		m.addAttribute("productlist", listProducts);
		m.addAttribute("flag", flag);

		return "product";

	}
	
	@RequestMapping(value="/productDisplay")
	public String DisplayProduct(Model m)
	{
		List<Product> listProducts = productDao.listall();
		m.addAttribute("productlist", listProducts);
		return "productDisplay";
		
	}
	
	@RequestMapping(value="/totalProductInfo/{productId}")
	public String TotalProductDisplay(@PathVariable("productId") int productId,Model m)
	{
		Product product=productDao.getProduct(productId);
		m.addAttribute("product",product);
		m.addAttribute("categoryname", categoryDao.getCategory(product.getCategoryId()).getCategoryName());
		return "totalProductDisplay";
	}

	@RequestMapping(value = "/InsertProduct", method = RequestMethod.POST)
	public  String InsertProduct(@RequestParam("productName") String productName,
			@RequestParam("productDesc") String productDesc, @RequestParam("price") int price,
			@RequestParam("stock") int stock, @RequestParam("categoryId") int categoryId,
		@RequestParam("supplierId") int supplierId,@RequestParam("file") MultipartFile file, Model m)
	{
		 flag=false;
		 Product product=new Product();
		
	
		
		product.setCategoryId(categoryId);
		product.setProductName(productName);
		product.setProductDesc(productDesc);
		product.setPrice(price);
	    product.setSupplierId(supplierId);
		product.setStock(stock);
		
		String path="C:\\Users\\singh\\eclipse-workspace\\fashionNyouFront\\src\\main\\webapp\\resources\\images\\";
		 path=path+product.getCode()+".jpg";
		 File f=new File(path);
		 
		 if(!file.isEmpty())
		 {
			 try {
				byte[] arr=file.getBytes();
				FileOutputStream fos=new FileOutputStream(f);
				BufferedOutputStream bs=new BufferedOutputStream(fos);
				bs.write(arr);
				bs.close();
			} 
			 
			 
			 catch (IOException e)
			 {
				
				e.printStackTrace();
			}
		 }

	   
		
		
		productDao.addProduct(product);
		List<Product> listProducts = productDao.listall();
		m.addAttribute("productlist", listProducts);
m.addAttribute("flag", flag);
		return "redirect:/Product";
	}

	
	@RequestMapping(value="/deleteproduct/{productId}")
	public String DeleteProduct(@PathVariable("productId") int productId, Model m) 
	{
		flag=false;
		Product product = productDao.getProduct(productId);
		productDao.deleteProduct(product);
		List<Product> listProducts = productDao.listall();
		m.addAttribute("productlist", listProducts);
		return "product";

	}
	
	@RequestMapping(value="/editproduct/{productId}")
	public String editProduct(@PathVariable("productId") int productId,Model m)
	{
		flag=true;
		Product product=productDao.getProduct(productId);
		m.addAttribute("productData", product);
		m.addAttribute("flag", flag);
		return "product";
		
	}
	
	

	@RequestMapping(value = "/UpdateProduct", method = RequestMethod.POST)
	public String UpdateProduct(@RequestParam("productId") int productId,@RequestParam("productName") String productName,
			@RequestParam("productDesc") String productDesc, @RequestParam("price") int price,
			@RequestParam("stock") int stock, @RequestParam("categoryId") int categoryId,
			@RequestParam("supplierId") int supplierId,Model m)

	{
		 flag=false;

		Product product = productDao.getProduct(productId);
		
		product.setProductName(productName);
		product.setProductDesc(productDesc);
		product.setPrice(price);
		product.setSupplierId(supplierId);
		product.setStock(stock);
		product.setCategoryId(categoryId);

		
		productDao.updateProduct(product);
		List<Product> listProducts = productDao.listall();
		m.addAttribute("productlist", listProducts);

		return "product";
	}
	
	

}
