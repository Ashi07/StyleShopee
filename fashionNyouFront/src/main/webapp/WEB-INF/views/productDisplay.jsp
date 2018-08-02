
  <%@ include file="header.jsp"%>

<style>
body
{
padding-top: 90px;
}


</style>
<html> 

<body>
<c:set var="count" value="0"/>
<div class="row">
<c:forEach items="${productlist}" var="product">
	
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<h4>
				<span data-toggle="tooltip"
						title="Bootstrap version">${product.productName} &nbsp; Rs ${product.price}</span>
				</h4>
				<img src="<c:url value="/resources/images/${product.code}.jpg"/>"
					height="250" width="200" alt="Image not supported" /> <a
					href="<c:url value="/totalProductInfo/${product.productId}"/>"
					class="btn btn-primary col-xs-12" role="button">Click to Large</a>
					
				<div class="clearfix"></div>

			</div>
			</div>
<c:set var="count" value="${count+1}"/>
<c:if test="${count==3}">
<c:set var="count" value="0"/>
</div>
<div class="row">
</c:if>
		
</c:forEach>
</div>
</body>
</html>