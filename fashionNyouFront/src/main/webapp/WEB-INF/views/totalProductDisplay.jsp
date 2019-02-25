  
<%@ include file="header.jsp" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>


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



<body>
<div class="container">
<table class="table" border="1">

<tr>
<td rowspan="15">
<img src="<c:url value="/resources/images/${product.code}.jpg"/>"width="400" height="300"/>
</td>
</tr>

<tr>
<td><b>ProductId</b></td>
<td>${product.productId}</td>
</tr>

<tr>
<td><b>ProductName</b></td>
<td>${product.productName}</td>
</tr>

<tr>
<td><b>SupplierId</b></td>
<td>${product.supplierId}</td>
</tr>

<tr>
<td><b>Price</b></td>
<td>${product.price}</td>
</tr>

<tr>
<td><b>Stock</b></td>
<td>${product.stock}</td>
</tr>

<tr>
<td><b>Category</b></td>
<td>${categoryname}</td>
</tr>

<form action="<c:url value='/ADD TO CART/${product.productId}'/>" method="get">

<tr>
<td><b>Quantity</b></td>
<td>

<select name="quantity" class="form-control btn-block">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
</td>
</tr>

<tr>
<td colspan="3"><input type="submit" value="ADD TO CART" class="btn btn-info btn-block"/></td>
</tr>

</form>


</table>


</div>

</body>
</html>