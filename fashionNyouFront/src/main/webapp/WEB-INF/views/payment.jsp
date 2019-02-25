<%@ include file="header.jsp" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
body {
	background-image: url("${pageContext.request.contextPath}/resources/images/c.jpg");
	width: 100%;
	height: 400%;
	min-height: 100%;
	min-width: 1024px;
	/* Set up proportionate scaling */
	/* Set up positioning */
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	/* Center and scale the image nicely */
	background-position: center;
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
	content: "";
	z-index: -5000;
	font-family: Arial, Helvetica, sans-serif;
}
</style>
<form action="<c:url value="/paymentProcessing"/>" method="post">
<div class="container">
<table class="table" align="center" width="50%">

<tr>
<td colspan="6"><center> <h3>Your Order</h3></center></td>
</tr>
           
 <tr bgcolor="pink">
 <td colspan="4">Total Amount</td>
 <td colspan="4">INR ${TotalPurchaseAmount} /-</td>
 </tr>
<tr>
<td colspan="2">Payment Option</td>
</tr>

<tr>
<td colsapn="2">
<input type="radio" value="CC" name="paymenttype"/>Credit Card
<input type="radio" value="CS" name="paymenttype"/> Cash on delivery
</td>
</tr>
<tr>
<td>Card No</td>
<td><input type="text" name="cardNo" required /></td>
</tr>

<tr>
<td>CVV</td>
<td><input type="text" name="CVV" required /></td>
</tr>

<tr>
<td>Valid upto</td>
<td><input type="text" name="validUpto" required /></td>
</tr>

<tr>
<td>
<td><input type="submit" value="payment"/></td>
</tr>




</table>
</form>

</div>
</body>
</html>