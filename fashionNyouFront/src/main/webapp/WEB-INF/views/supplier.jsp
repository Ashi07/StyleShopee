<%@ include file="header.jsp" %>
	
<c:if test="${flag}">	
	<center>
	<h1>Supplier</h1>
	<form action="<c:url value="/UpdateSupplier/"/>" method="post">
		<table>
		
		<tr>
				<td>SupplierId</td>
				<td><input type="text" name="supplierId" value="${supplierData.supplierId}" readonly></td>
			</tr>
			<tr>
				<td>SupplierName</td>
				<td><input type="text" name="supplierName" value="${supplierData.supplierName}"></td>
			</tr>
			<tr>
				<td>SupplierDesc</td>
				<td><input type="text" name="supplierDesc" value="${supplierData.supplierDesc}"></td>
			</tr>
			<tr>
				<td>SupplierRating</td>
				<td><input type="text" name="ratings" value="${supplierData.ratings}"></td>
			</tr>
			<tr>
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
				<td>SupplierName</td>
				<td><input type="text" name="supplierName"></td>
			</tr>
			<tr>
				<td>SupplierDesc</td>
				<td><input type="text" name="supplierDesc"></td>
			</tr>
			<tr>
				<td>SupplierRating</td>
				<td><input type="text" name="ratings"></td>
			</tr>
			<tr>
				<td><input type="submit" value="save"></td>
			</tr>

		</table>

	</form>
</center>
</c:if>

<center>
	<table>
		<tr>
			<td>supplierId</td>
			<td>supplierName</td>
			<td>supllierDesc</td>
			<td>ratings</td>


			<c:forEach items="${supplierlist}" var="supplier">
				<tr>
					<td>${supplier.supplierId}</td>
					<td>${supplier.supplierName}</td>
					<td>${supplier.supplierDesc}</td>
					<td>${supplier.ratings}</td>
					<td><a
						href="<c:url value='/deletesupplier/${supplier.supplierId}'/>">
							Delete </a> <a
						href="<c:url value='/editsupplier/${supplier.supplierId}'/>">
							edit </a></td>
				</tr>
			</c:forEach>
	</table>
</center>
<html>