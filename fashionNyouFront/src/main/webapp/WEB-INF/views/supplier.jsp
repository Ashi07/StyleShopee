<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="header.jsp"%>
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
 
<body>
<c:if test="${flag}">	
	<center>
	<h1><center>Supplier</center></h1>
	<form action="<c:url value="/UpdateSupplier/"/>" method="post">
		<table>
		
		<tr>
				<td><b>SupplierId</b></td>
				<td><input type="text" name="supplierId" value="${supplierData.supplierId}" readonly></td>
			</tr>
			<tr>
				<td><b>SupplierName</b></td>
				<td><input type="text" name="supplierName" value="${supplierData.supplierName}"></td>
			</tr>
			<tr>
				<td><b>SupplierDesc</b></td>
				<td><input type="text" name="supplierDesc" value="${supplierData.supplierDesc}"></td>
			</tr>
			<tr>
				<td><b>SupplierRating</b></td>
				<td><input type="text" name="ratings" value="${supplierData.ratings}"></td>
			</tr>
			<tr bgcolor="black">
				<td><input type="submit" value="update"></td>
			</tr>

		</table>

	</form>
</center>
</c:if>
<c:if test="${!flag}">	
<center>
	<h1>Supplier</h1>
	<form action="<c:url value="/InsertSupplier/"/>" method="post">
		<table>
			<tr>
				<td><b>SupplierName</b></td>
				<td><input type="text" name="supplierName"></td>
			</tr>
			<tr>
				<td><b>SupplierDesc</b></td>
				<td><input type="text" name="supplierDesc"></td>
			</tr>
			<tr>
				<td><b>SupplierRating</b></td>
				<td><input type="text" name="ratings"></td>
			</tr>
			<tr bgcolor="black">
				<td><input type="submit" value="save"></td>
			</tr>

		</table>

	</form>
</center>
</c:if>


	<table>
		<tr>
			<td><b>supplierId</b></td>
			<td><b>supplierName</b></td>
			<td><b>supllierDesc</b></td>
			<td><b>ratings</b></td>


			<c:forEach items="${supplierlist}" var="supplier">
				<tr>
					<td>${supplier.supplierId}</td>
					<td>${supplier.supplierName}</td>
					<td>${supplier.supplierDesc}</td>
					<td>${supplier.ratings}</td>
					<td><button>
					<a href="<c:url value='/deletesupplier/${supplier.supplierId}'/>">
							 <span class="glyphicon glyphicon-remove"></span> </a> </button>
							<button ><a href="<c:url value='/editsupplier/${supplier.supplierId}'/>">
							 <span class="glyphicon glyphicon-edit"></span></a> </button> </td>
				</tr>
			</c:forEach>
	</table>

</body>
