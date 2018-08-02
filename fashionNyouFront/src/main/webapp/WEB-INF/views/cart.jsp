<%@ include file="header.jsp" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>




<style>
body
{
padding-top: 90px;

}

</style>

<body>
	<div class="container">
		<table class="table">
			<tr>
				<td>SL#</td>
				<td>ProductName</td>
				<td>Price</td>
				<td>Quantity</td>
				<td>TotalPrice</td>
				<td>Operation</td>
			</tr>

			<c:forEach items="${cartItems}" var="cartItem">
				<form
					action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>"
					method="get">
				<tr>
					<td>${cartItem.cartItemId}</td>
					<td>${cartItem.productName}</td>
					<td>${cartItem.price}</td>
					<td><input type="text" name="quantity" value="${cartItem.quantity}" /></td>
					<td>${cartItem.quantity*cartItem.price}</td>
					<td><input type="submit" value="update" class="btn btn-info" />
						<a
						href="<c:url value='/deleteCartFrame/${cartItem.cartItemId}'/>" class="
						btn btn-danger">Delete</a></td>
				</tr>
				</form>

			</c:forEach>
			<tr>
				<td colspan="4">Total Amount</td>
				<td colspan="4">${TotalPurchaseAmount}</td>
			</tr>
			
			<tr>
			<td> <a href="<c:url value='/continueShopping'/>" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
			<td> <a href="<c:url value='/checkout'/>" class="btn btn-warning"><i class="fa fa-angle-left"></i> Checkout</a></td>

            </tr>

		</table>



	</div>


</body>
</html>