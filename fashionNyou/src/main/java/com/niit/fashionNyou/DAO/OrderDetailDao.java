package com.niit.fashionNyou.DAO;

import com.niit.fashionNyou.model.OrderDetail;

public interface OrderDetailDao
{
	public boolean InsertOrderDetail(OrderDetail orderDetail);
	public boolean UpdateOrderDetail(String username);

}
