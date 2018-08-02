package com.fashionNyouFront.styleshopee;

import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.fashionNyou.DAO.CartItemDao;
import com.niit.fashionNyou.DAO.ProductDao;
import com.niit.fashionNyou.model.CartItem;
import com.niit.fashionNyou.model.Product;

@Controller
public class CartController 
{
	@Autowired
	ProductDao productDao;
	
	@Autowired
	CartItemDao cartItemDao;
	
	
	@RequestMapping("/cart")
	public String showCart(Model m,HttpSession session)
	{
		String username = (String) session.getAttribute("username");
		List<CartItem> cartItems=cartItemDao.showCartItems(username);


    	m.addAttribute("cartItems",cartItems);
    	m.addAttribute("TotalPurchaseAmount",this.TotalPurchaseAmount(cartItems));
    	
		return "cart";
	}
	
	
	
	
    @RequestMapping(value="/ADD TO CART/{productId}")
	public String addCartItem(@RequestParam("quantity") int quantity,@PathVariable("productId") int productId,HttpSession session,Model m)
	{
    	Product product=productDao.getProduct(productId);
    	
    	String username=(String) session.getAttribute("username");
    	CartItem cartItem=new CartItem();
    	cartItem.setProductId(product.getProductId());
    	cartItem.setProductName(product.getProductName());
    	cartItem.setPrice(product.getPrice());
    	cartItem.setQuantity(quantity);
    	cartItem.setUsername(username);
    	cartItem.setStatus("NA");
    	
    	cartItemDao.addCartItem(cartItem);
    	
    	
    	List<CartItem> cartItems=cartItemDao.showCartItems(username);


    	m.addAttribute("cartItems",cartItems);
    	m.addAttribute("TotalPurchaseAmount",this.TotalPurchaseAmount(cartItems));
    	
    	
		
    	return "redirect:/cart";
	}
    
    @RequestMapping(value="/updateCartItem/{cartItemId}")
    public String UpdateCartItem(@RequestParam("quantity") int quantity,@PathVariable("cartItemId") int cartItemId,HttpSession session,Model m)
    {
    	CartItem cartItem=cartItemDao.getCartItem(cartItemId);
    	String username=(String) session.getAttribute("username");
    	
    	cartItem.setQuantity(quantity);
    	cartItemDao.updateCartItem(cartItem);
    	
        List<CartItem> cartItems=cartItemDao.showCartItems(username);
    	
    	m.addAttribute("cartItems",cartItems);
    	m.addAttribute("TotalPurchaseAmount",this.TotalPurchaseAmount(cartItems));
    	
    	
    	
    	return "redirect:/cart";
    }
    
    
    @RequestMapping(value="/deleteCartFrame/{cartItemId}")
    public String DeleteCartItem(@PathVariable("cartItemId") int cartItemId,HttpSession session,Model m)
    {
    	CartItem cartItem=cartItemDao.getCartItem(cartItemId);
    	String username=(String) session.getAttribute("username");
    	cartItemDao.deleteCartItem(cartItem);
    	
        List<CartItem> cartItems=cartItemDao.showCartItems(username);
    	
    	m.addAttribute("cartItems",cartItems);
    	m.addAttribute("TotalPurchaseAmount",this.TotalPurchaseAmount(cartItems));
    	
    	return "redirect:/cart";
    }
    
    
    
    
    public int TotalPurchaseAmount(List<CartItem> cartItems)
    {
    	int TotalPurchaseAmount=0;
    	int count=0;
    	
    	while(count<cartItems.size())
    	{
    		
    		CartItem cartItem=cartItems.get(count);
    		TotalPurchaseAmount=(int)TotalPurchaseAmount+(cartItem.getQuantity()*cartItem.getPrice());
    		count++;
    		
    	}
    	
    	return TotalPurchaseAmount;
    }
    
    @RequestMapping(value="/continueShopping")
    public String Continue(Model m)
    {
    	m.addAttribute("productlist", productDao.listall());
    	return "productDisplay";
    
    	
    }
}
