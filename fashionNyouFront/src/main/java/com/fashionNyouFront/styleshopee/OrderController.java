package com.fashionNyouFront.styleshopee;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.fashionNyou.DAO.CartItemDao;
import com.niit.fashionNyou.DAO.OrderDetailDao;
import com.niit.fashionNyou.model.CartItem;
import com.niit.fashionNyou.model.OrderDetail;

@Controller
public class OrderController 
{
	@Autowired
	CartItemDao cartItemDao;
	
	@Autowired
	OrderDetailDao orderDetailDao;
	
	@RequestMapping(value="/checkout")
	public String Checkout(Model m,HttpSession session)
	{
		String username = (String) session.getAttribute("username");
		List<CartItem> cartItems=cartItemDao.showCartItems(username);


    	m.addAttribute("cartItems",cartItems);
    	m.addAttribute("TotalPurchaseAmount",this.TotalPurchaseAmount(cartItems));
    	
		return "myOrder";
	}
	
	@RequestMapping(value="/payment")
	public String Payment(Model m,HttpSession session)
	{
		String username = (String) session.getAttribute("username");
		List<CartItem> cartItems=cartItemDao.showCartItems(username);
		m.addAttribute("cartItems", cartItems);
		m.addAttribute("TotalPurchaseAmount",this.TotalPurchaseAmount(cartItems));

		return "payment";
	}
	
	@RequestMapping(value="/paymentProcessing" ,method=RequestMethod.POST)
	public String PaymentProcessing(@RequestParam("paymenttype")String paymode,Model m,HttpSession session)
	{
		String username = (String) session.getAttribute("username");
		List<CartItem> cartItems=cartItemDao.showCartItems(username);
		m.addAttribute("cartItems",cartItems);
		int  TotalPurchaseAmount=this.TotalPurchaseAmount(cartItems);
		m.addAttribute("TotalPurchaseAmount",TotalPurchaseAmount(cartItems));

		OrderDetail orderDetail=new OrderDetail();
		orderDetail.setPaymentMode(paymode);
		orderDetail.setUsername(username);
		orderDetail.setTotalPurchaseAmount(TotalPurchaseAmount);
		orderDetail.setOrderdate(new java.util.Date());
		
		orderDetailDao.InsertOrderDetail(orderDetail);
		orderDetailDao.UpdateOrderDetail(username);
		
		m.addAttribute("orderDetail", orderDetail);
		
		
		return "reciept";
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
}
