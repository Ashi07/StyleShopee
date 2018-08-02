<%@ include file="header.jsp" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>

.heading
{
margin-top:50px;

}



</style>
<center>
<div class="heading">
<h1>Product</h1>
</div>
 <c:if test="${flag}">
	

		<form action="<c:url value="/UpdateProduct"/>" method="post" enctype="multipart/form-data">

			<table>

				<tr bgcolor="pink">
					<td>ProductId</td>
					<td><input type="text" name="productId" value="${productData.productId}" readonly /></td>
				</tr>

				<tr>
					<td>ProductName</td>
					<td><input type="text" name="productName"  value="${productData.productName}"/></td>
				</tr>

				<tr>
					<td>ProductDescription</td>
					<td><input type="text" name="productDesc" value="${productData.productDesc}"/> </td>
				</tr>

				<tr>
					<td>Price</td>
					<td><input type="text" name="price"  value="${productData.price}"/></td>

				</tr>


				<tr>
					<td>Stock</td>
					<td><input type="text" name="stock" value="${productData.stock}" /></td>
				</tr>

				<tr>
					<td>CategoryId</td>
					<td><input type="text" name="categoryId" value="${productData.categoryId}" /></td>
				</tr>

				<tr>
					<td>SupplierId</td>
					<td><input type="text" name="supplierId"  value="${productData.supplierId}"/></td>
				</tr>
				
				<!-- <tr>
					<td><input type="file" value="file"></td>
				</tr> -->
				
				

				<tr>
					<td><input type="submit" value="update"></td>
				</tr>

			</table>

		</form>
	</center> 
</c:if>  
<c:if test="${!flag}"> 
	<center>
		<form action="<c:url value="/InsertProduct"/>" method="post"  enctype="multipart/form-data">

			<table>

				<tr>
					<td>ProductName</td>
					<td><input type="text" name="productName" /></td>
				</tr>

				<tr>
					<td>ProductDescription</td>
					<td><input type="text" name="productDesc"></td>
				</tr>

				<tr>
					<td>Price</td>
					<td><input type="text" name="price" /></td>

				</tr>


				<tr>
					<td>Stock</td>
					<td><input type="text" name="stock" /></td>
				</tr>

				<tr>
					<td>CategoryId</td>
					<td><input type="text" name="categoryId" /></td>
				</tr>

				<tr>
					<td>SupplierId</td>
					<td><input type="text" name="supplierId" /></td>
				</tr>
				
				<tr>
					<td>Image<input type="file" name="file"></td>
				</tr>
				 

				<tr>
					<td><input type="submit" value="save" ></td>
				</tr>

			</table>

		</form>
	</center>
	 </c:if> 

<center>
<table>

	<tr bgcolor="pink">
	    <!--  <td>Image</td>  -->
		<td>ProductId</td>
		<td>ProductName</td>
		<td>ProductDesc</td>
		<td>Price</td>
		<td>Stock</td>
		<td>SupplierId</td>
		<td>CategoryId</td>
		<td>Action</td>
    </tr>

	<c:forEach items="${productlist}" var="product">
		<tr bgcolor="powderblue">
		  <%--  <td><img src="/resources/images/${product.file}.jpg"></td>  --%>
			<td>${product.productId}</td>
			<td>${product.productName}</td>
			<td>${product.productDesc}</td>
			<td>${product.price}</td>
			<td>${product.stock}</td>
			<td>${product.supplierId}</td>
			<td>${product.categoryId}</td>
			
			<td><a
				href="<c:url value='/deleteproduct/${product.productId}'/>">
					Delete </a> <a
				href="<c:url value='/editproduct/${product.productId}'/>">
					edit </a></td>
		</tr>
	</c:forEach>

</table>
</center>





</html>