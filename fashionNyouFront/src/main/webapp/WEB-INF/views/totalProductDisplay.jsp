  
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