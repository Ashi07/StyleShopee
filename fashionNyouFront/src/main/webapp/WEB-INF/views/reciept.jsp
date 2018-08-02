<%@ include file="header.jsp" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
body
{
padding-top: 70px;

}

</style>
<form action="<c:url value="/paymentProcessing"/>" method="post">
<div class="container">
<table class="table" align="center" width="50%">

<tr bgcolor="lightblue">
<td colspan="8"><center> <h3>Your Order</h3></center></td>
</tr>

<tr bgcolor="pink">
<td colspan="3">OrderId</td>
<td>${orderDetail.orderId}</td>
<td colspan="3">OrderDate</td>
<td>${orderDetail.orderdate}</td>
</tr>

           

 <center>
            <tr>
				<td>SL#</td>
				<td>ProductName</td>
				<td>Price</td>
				<td>Quantity</td>
				<td>TotalPrice</td>
				
			</tr>
		<c:if test="${empty cartItems}">
		<tr><td colspan="6"><center><h3>Your Cart Is Empty!!</h3></center></td></tr>
		</c:if>
		
		<c:if test="${not empty cartItems}">
			<c:forEach items="${cartItems}" var="cartItem">
				<form
					action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>"
					method="get">
				<tr>
					<td>${cartItem.cartItemId}</td>
					<td>${cartItem.productName}</td>
					<td>${cartItem.price}</td>
					<td>${cartItem.quantity}</td>
					<td>${cartItem.quantity*cartItem.price}</td>
					
				</tr>
				</form>

			</c:forEach>
			</c:if>
			
			<tr bgcolor="orange">
				<td colspan="5">Total Amount</td>
			<td colspan="5">${TotalPurchaseAmount}</td>
			</tr>
			
			<tr bgcolor="cyan">
			<td colspan="9"><center><h4>Thanks for shopping Hope to see you again :)</h4></center></td>
			</tr>
			</center>
 
</body>
</html>