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
.heart-icon
{
position:absolute;
top:4px;
right:24px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
 max-height:250px;
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7;
}
</style>
<html> 

<body>
<%-- <c:set var="count" value="0"/>
<div class="row">
<c:forEach items="${productlist}" var="product">
	
		<div class="col-sm-6 col-md-3">
			<div class="thumbnail">
				<h4>
				
				<span data-toggle="tooltip"
						title="Bootstrap version">${product.productName} &nbsp; Rs ${product.price}</span>
				</h4>
				<h3><a href="<c:url value="/AddToFavourites/${product.productId}"/>" class="heart-icon"><span class="pull-right glyphicon glyphicon-heart" style="color:red"></span>
				</a></h3>
				<img src="<c:url value="/resources/images/${product.code}.jpg"/>"
					height="250" width="200" alt="Image not supported" /> <a
					href="<c:url value="/totalProductInfo/${product.productId}"/>"
					class="btn btn-primary col-xs-12" role="button">Click to Large</a>
					
				<div class="clearfix"></div>

			</div>
			</div>
			
<c:set var="count" value="${count+1}"/>
<c:if test="${count==4}">
<c:set var="count" value="0"/>
</div>
<div class="row">
</c:if>
		
</c:forEach>
</div>
 --%>


<c:set var="count" value="0"/>
<div class="row">
<c:forEach items="${productlist}" var="product">
<div class="col-sm-6 col-md-3">
<div class="card">
 <img src="<c:url value="/resources/images/${product.code}.jpg"/>"
					height="250" width="250" alt="Image not supported" />
  <h2>${product.productDesc}</h2>
  <p class="price">$ ${product.price}</p>
 
 <a href="<c:url value="/totalProductInfo/${product.productId}"/>"
					class="btn btn-primary col-xs-12" role="button">Click to Large</a>
</div>
</div>
<c:set var="count" value="${count+1}"/>
<c:if test="${count==4}">
<c:set var="count" value="0"/>
</div>
<div class="row">
</c:if>
		
</c:forEach>
</div>

</body>
</html>