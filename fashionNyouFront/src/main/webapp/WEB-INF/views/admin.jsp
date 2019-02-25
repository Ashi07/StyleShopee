<%@ include file="header.jsp"%>

<style>
body {
	background-image:
		url("${pageContext.request.contextPath}/resources/images/c.jpg");
	height: 100%;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	padding-top: 70px;
}

.thumbnail {
	border: none;
	background: none;
	height: 350px;
	width: 400px;
	margin-left:100px;
	margin-right:60px;
	padding:60px;

</style>
<body>
	<div class="row">
  <div class="col-md-3">
    <div class="thumbnail">
      <a href="${pageContext.request.contextPath}/supplier">
        <img src="resources/images/s1.jpg"  class="img-rounded" alt="Lights" style="width:350px;height:400px" >
        <div class="caption">
       <h3 align="center"><b>CLICK HERE<br> To Add Supplier</b></h3>
        
          
        </div>
      </a>
    </div>
  </div>
  <div class="col-md-3">
    <div class="thumbnail">
     <a href="${pageContext.request.contextPath}/Product">
        <img src="resources/images/p2.jpg"  class="img-rounded" alt="Nature" style="width:350px;height:400px">
        <div class="caption">
        <h3 align="center"><b>CLICK HERE<br> To Add Product</b></h3>
      
        
         
        </div>
      </a>
    </div>
  </div>
  <div class="col-md-3">
    <div class="thumbnail">
      <a href="${pageContext.request.contextPath}/category">
        <img src="resources/images/c1.jpg"  class="img-rounded" alt="Fjords" style="width:350px;height:400px">
        <div class="caption">
         <h3 align="center"><b>CLICK HERE<br> To Add Category</b></h3>
      
     												    
        </div>
      </a>
    </div>
  </div>
  
</div>
</body>
</html>