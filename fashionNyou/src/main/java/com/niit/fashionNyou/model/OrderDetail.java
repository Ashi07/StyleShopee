package com.niit.fashionNyou.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="OrderDetail")
public class OrderDetail 
{
	@Id
	@GeneratedValue
	int orderId;
	String username;
	int totalPurchaseAmount;
	Date orderdate;
	String paymentMode;
	
	public int getOrderId() 
	{
		return orderId;
	}
	
	public void setOrderId(int orderId)
	{
		this.orderId = orderId;
	}
	
	public String getUsername()
	{
		return username;
	}
	
	public void setUsername(String username)
	{
		this.username = username;
	}
	
	public int getTotalPurchaseAmount() 
	{
		return totalPurchaseAmount;
	}
	
	public void setTotalPurchaseAmount(int totalPurchaseAmount)
	{
		this.totalPurchaseAmount = totalPurchaseAmount;
	}
	
	public Date getOrderdate()
	{
		return orderdate;
	}
	
	public void setOrderdate(Date orderdate)
	{
		this.orderdate = orderdate;
	}
	
	public String getPaymentMode()
	{
		return paymentMode;
	}
	
	public void setPaymentMode(String paymentMode)
	{
		this.paymentMode = paymentMode;
	}
	

}
