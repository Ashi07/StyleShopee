<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="header.jsp"%>
 


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
	
	background-position: center;
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
	content: "";
	z-index: -5000;
	font-family: Arial, Helvetica, sans-serif;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: #f2f2f2
}

.h1
{
text-shadow: 1px 1px black;
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
					<td><b>ProductId</b></td>
					<td><input type="text" name="productId" value="${productData.productId}" readonly /></td>
				</tr>

				<tr>
					<td><b>ProductName</b></td>
					<td><input type="text" name="productName"  value="${productData.productName}"/></td>
				</tr>

				<tr>
					<td><b>ProductDescription</b></td>
					<td><input type="text" name="productDesc" value="${productData.productDesc}"/> </td>
				</tr>

				<tr>
					<td><b>Price</b></td>
					<td><input type="text" name="price"  value="${productData.price}"/></td>

				</tr>


				<tr>
					<td><b>Stock</b></td>
					<td><input type="text" name="stock" value="${productData.stock}" /></td>
				</tr>

				<tr>
					<td><b>CategoryId</b></td>
					<td><input type="text" name="categoryId" value="${productData.categoryId}" /></td>
				</tr>

				<tr>
					<td><b>SupplierId</b></td>
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
					<td><b>ProductName</b></td>
					<td><input type="text" name="productName" /></td>
				</tr>

				<tr>
					<td><b>ProductDescription</b></td>
					<td><input type="text" name="productDesc"></td>
				</tr>

				<tr>
					<td><b>Price</b></td>
					<td><input type="text" name="price" /></td>

				</tr>


				<tr>
					<td><b>Stock</b></td>
					<td><input type="text" name="stock" /></td>
				</tr>
				
				<tr>
					<td><b>Category</b></td>
					<td><input type="text" name="categoryId" /></td>
				</tr>
				
				
				<tr>
					<td><b>Supplier</b></td>
					<td><input type="text" name="supplierId" /></td>
				</tr>
				
				

				<%-- <tr>
					<td><b>Category</b></td>
					
					<td><select name="categoryId">
						<option value="0">-------Select------</option>
						<c:forEach items="${categorylist}" var="category">
							<option value="${category.categoryId}">${category.categoryName}</option>
						</c:forEach>

				</select></td>
				</tr> --%>

				<%-- <tr>
					<td><b>SupplierId</b></td>
					<td><select name="suppierId">
						<option value="0">-------Select------</option>
						<c:forEach items="${supplierlist}" var="supplier">
							<option value="${supplier.supplierId}">${supplier.supplierName}</option>
						</c:forEach>

				</select></td>
				</tr> --%>
				
				
				
				<tr>
					<td><b>Image<input type="file" name="file"></b></td>
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
		<td><b>ProductId</b></td>
		<td><b>ProductName</b></td>
		<td><b>ProductDesc</b></td>
		<td><b>Price</b></td>
		<td><b>Stock</b></td>
		<td><b>SupplierId</b></td>
		<td><b>CategoryId</b></td>
		<td><b>Action</b></td>
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
					<span class="glyphicon glyphicon-remove"></span> </a> <a
				href="<c:url value='/editproduct/${product.productId}'/>">
					<span class="glyphicon glyphicon-edit"></span> </a></td>
		</tr>
	</c:forEach>

</table>
</center>





</html>