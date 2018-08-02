package com.niit.fashionNyou.DAO;

import java.util.List;

import com.niit.fashionNyou.model.CartItem;

public interface CartItemDao 
{
	public boolean addCartItem(CartItem cartItem);
	public boolean updateCartItem(CartItem cartItem);
	public boolean deleteCartItem(CartItem cartItem);
	public List<CartItem> showCartItems(String username);
	public CartItem getCartItem(int cartItemId);
	

}
