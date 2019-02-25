package com.fashionNyouFront.styleshopee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.fashionNyou.DAO.SupplierDao;
import com.niit.fashionNyou.model.Supplier;

@Controller
public class SupplierController
{
	@Autowired
	SupplierDao supplierDao;
	
	boolean flag;
	
	@RequestMapping(value="/supplier")
	public String showSupplier(Model m)
	{
		
		List<Supplier> listSupplier=supplierDao.getall();
		m.addAttribute("supplierlist", listSupplier);
		
		return "supplier";
		
	}
	
	@RequestMapping(value="/InsertSupplier",method=RequestMethod.POST)
	public String InsertSupplier(@RequestParam("supplierName") String supplierName,
			@RequestParam("supplierDesc") String supplierDesc,@RequestParam("ratings") int ratings, Model m)
	{
		flag=false;
		Supplier supplier=new Supplier();
		supplier.setSupplierName(supplierName);
		supplier.setSupplierDesc(supplierDesc);
		supplier.setRatings(ratings);
		
		supplierDao.addSupplier(supplier);
		List<Supplier> listSupplier=supplierDao.getall();
		m.addAttribute("supplierlist", listSupplier);
		
		return "supplier";
		
	}
	
	
	@RequestMapping(value="/deletesupplier/{supplierId}")
	public String DeleteSupplier(@PathVariable("supplierId") int supplierId,Model m)
	{
		flag=false;
		Supplier supplier=supplierDao.getSupplierBySupplierId(supplierId);
		supplierDao.deleteSupplier(supplier);
		List<Supplier> listSupplier=supplierDao.getall();
		m.addAttribute("supplierlist", listSupplier);
		return "supplier";
	}
	
	@RequestMapping(value="/editsupplier/{supplierId}")
	public String EditSupplier(@PathVariable("supplierId") int supplierId,Model m)
	{
		flag=true;
		Supplier supplier=supplierDao.getSupplierBySupplierId(supplierId);
		m.addAttribute("supplierData",supplier);
		m.addAttribute("flag",flag);
		
		return "supplier";
	}
	
	@RequestMapping(value="/UpdateSupplier")
	public String Update(@RequestParam("supplierId") int supplierId,@RequestParam("supplierName") String supplierName,
			@RequestParam("supplierDesc") String supplierDesc,@RequestParam("ratings") int ratings,Model m)
	{
		flag=false;
		Supplier supplier=supplierDao.getSupplierBySupplierId(supplierId);
		supplier.setSupplierName(supplierName);
		supplier.setSupplierDesc(supplierDesc);
		supplier.setRatings(ratings);
		
		supplierDao.updateSupplier(supplier);
		List<Supplier> listSupplier=supplierDao.getall();
		m.addAttribute("supplierlist", listSupplier);
		return "supplier";
	}
	

}
