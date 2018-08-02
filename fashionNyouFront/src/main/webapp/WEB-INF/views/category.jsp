<%@ include file="header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
body
{
padding-top: 70px;

background-image:url("${pageContext.request.contextPath}/resources/images/bg.jpg");
height: 100%;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;



}


</style>

<h1>Category</h1>


<c:if test="${flag}">
	<center>
		<form action="<c:url value="/UpdateCategory"/>" method="post">

			<table>
				<tr>
					<td>CategoryId</td>
					<td><input type="text" name="categoryId"
						value="${categoryData.categoryId}" readonly /></td>

				</tr>

				<tr>
					<td>CategoryName</td>
					<td><input type="text" name="categoryName"
						value="${categoryData.categoryName}" /></td>

				</tr>

				<tr>
					<td>CategoryType</td>
					<td><input type="text" name="categoryType"
						value="${categoryData.categoryType}"></td>
				</tr>

				<tr>
					<td><input type="submit" value="Update"></td>
				</tr>

			</table>

		</form>
	</center>
</c:if> 

<c:if test="${!flag}">
	<center>
		<form action="<c:url value="/InsertCategory/"/>" method="post">

			<table>

				<tr>
					<td>CategoryName</td>
					<td><input type="text" name="categoryName" /></td>
				</tr>

				<tr>
					<td>CategoryType</td>
					<td><input type="text" name="categoryType"></td>
				</tr>

				<tr>
					<td><input type="submit" value="Insert"></td>
				</tr>

			</table>

		</form>
	</center>
</c:if>


<div class="container">



<table class="table-bordered" align="center" width="100%" height="100%">
<thead>
	<tr bgcolor="pink">
		<td>CategoryId</td>
		<td>CategoryName</td>
		<td>CategoryType</td>
		<td>Action</td>
		

	</tr>
	</thead>
<tbody>
	<c:forEach items="${categorylist}" var="category">
		<tr bgcolor="powderblue">
			<td>${category.categoryId}</td>
			<td>${category.categoryName}</td>
			<td>${category.categoryType}</td>

			<td><a
				href="<c:url value='/deletecategory/${category.categoryId}'/>">
					Delete </a> <a
				href="<c:url value='/editcategory/${category.categoryId}'/>">
					edit </a></td>
		</tr>

	</c:forEach>
	</tbody>

</table>
</div>








</html>