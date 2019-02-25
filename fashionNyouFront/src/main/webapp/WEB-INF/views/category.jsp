
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<h1><center>Category</center></h1>


<c:if test="${flag}">
	<center>
		<form action="<c:url value="/UpdateCategory"/>" method="post">

			<table>
				<tr>
					<td><b>CategoryId</b></td>
					<td><input type="text" name="categoryId"
						value="${categoryData.categoryId}" readonly /></td>

				</tr>

				<tr>
					<td><b>CategoryName</b></td>
					<td><input type="text" name="categoryName"
						value="${categoryData.categoryName}" /></td>

				</tr>

				<tr>
					<td><b>CategoryType</b></td>
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
					<td><b>CategoryName</b></td>
					<td><input type="text" name="categoryName" /></td>
				</tr>

				<tr>
					<td><b>CategoryType</b></td>
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
		<td><b>CategoryId</b></td>
		<td><b>CategoryName</b></td>
		<td><b>CategoryType</b></td>
		<td><b>Action</b></td>
		

	</tr>
	</thead>
<tbody>
	<c:forEach items="${categorylist}" var="category">
		<tr bgcolor="powderblue">
			<td>${category.categoryId}</td>
			<td>${category.categoryName}</td>
			<td>${category.categoryType}</td>

			<td><button><a
				href="<c:url value='/deletecategory/${category.categoryId}'/>">
					 <span class="glyphicon glyphicon-remove"></span> </a></button><button> <a
				href="<c:url value='/editcategory/${category.categoryId}'/>">
					 <span class="glyphicon glyphicon-edit"></span> </a></button></td>
		</tr>

	</c:forEach>
	</tbody>

</table>
</div>






</body>

</html>