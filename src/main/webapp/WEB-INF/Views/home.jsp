<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<title>Supply Chain Management</title>

<style>
li
{
	padding: 10px;
	font-size: 20px;
	
}
a:hover 
{
  background-color: orange;
  color: black;
  border-radius: 10px;
}
a
{
padding: 10px;
text-decoration: none;
text-align: center;
}

</style>

<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark" style="height:90px; ">
  <div class="container-fluid">
 <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm5txCqt4HKTeHXORUe-b9zKF15ElOfBYukWDjG_lVUzTrOsLP4GaiHDHuQyjh1AObXdE&usqp=CAU" alt="logo" width="125" height="70">
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav me-auto mb-2 mb-md-0">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="<%= request.getContextPath() %>/homepage"> Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%= request.getContextPath() %>/register"> Manufacture unit</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%= request.getContextPath() %>/registerwholesale">Wholesale Unit</a>
        </li>
        <li class="nav-item" >
          <a class="nav-link " href="<%= request.getContextPath() %>/registerretail1">Retail Unit</a>
        </li>
        
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

</head>
<body style="background-color: #FEF1E6">


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<br><br><br><br>

<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner" style="border-radius: 40px; width: 1670px; left:10px;">
    <div class="carousel-item active">
      <img src="https://www.ceo-review.com/wp-content/uploads/2021/01/Manufacturing-Tech.jpg" height="650" width="1200" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block" style="background: rgba(160, 160, 160, 0.7); border-radius: 30px;" >
      <div>
      <h5><b>MANUFACTURE UNIT </b></h5>
        <p><b>Manufacture any type of product you want and store its data here.
            Update your product data dynamically and store it in very efficient way.</b></p>
      </div>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://www.smallbusinesscomputing.com/wp-content/uploads/2021/11/Top-Wholesale-Suppliers-for-Small-Business-scaled.jpeg" height="650" width="1200" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block" style="background: rgba(160, 160, 160, 0.7); border-radius: 30px;">
        <h5><b>WHOLESALE UNIT</b></h5>
        <p><b>Order the products from the Factory directly.
            Just check the Quantity available and place your order.</b></p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://imageio.forbes.com/specials-images/imageserve/60181441c5f6e8629a409471/Personal-perspective-of-a-shopper-pushing-shopping-trolley-along-product-aisle-while/960x0.jpg?format=jpg&width=960" height="650" width="1200" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block" style="background: rgba(160, 160, 160, 0.7); border-radius: 30px;">
        <h5><b>RETAIL UNIT</b></h5>
        <p><b>Get exposure to all types of wholesalers.
            Get your customers easily and find your sales.</b></p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<br> <br><br>
<div class="ani">
 <h2>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Overview of SupplyChain Management System</h2>
 <p style= "right:40px; font-size: 20px;">      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Supply chain management is the handling of the entire production flow of a good or service — 
 starting from the raw components all the way to delivering the final product to the &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;consumer. 
 A company creates a network of suppliers (“links” in the chain) that move the product along from the suppliers of raw materials to those organizations that deal directly &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;with users.
 Supply chain management is the management of the flow of goods and services and includes all processes that transform raw materials into final products. 
 It involves the &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;active streamlining of a business's supply-side activities to maximize customer value and gain a competitive advantage in the marketplace.
 Supply chain management (SCM) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;represents an effort by suppliers to develop and implement supply chains that are as efficient and economical as possible.
 Supply chains cover everything from production to product &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;development to the information systems needed to direct these undertakings.</p>
</div> 
<br><br><br>
<div class="ani">
<div style="position: absolute; right:40px"> 
 <h2>KEY TAKEAWAYS </h2> 
 <ul> 
 <li>Supply chain management (SCM) is the centralized management of the flow of goods and services and includes 
 all processes that transform raw materials into final products.</li>
 <li>By managing the supply chain, companies can cut excess costs and deliver products
  to the consumer faster and more efficiently.</li>
 <li>Good supply chain management keeps companies out of the headlines and away from expensive recalls and lawsuits. </li>
 <li>The five most critical elements of SCM are developing a strategy, sourcing raw materials, production, distribution, and returns.</li>
 <li>A supply chain manager is tasked with controlling and reducing costs and avoiding supply shortages.</li>
 </ul>     
</div> 
</div>
<br> <br><br><br><br><br><br><br><br><br><br><br><br><br>

<div class="ani">
  <div class="container px-4 py-5" id="featured-3">
    <h2 class="pb-2 border-bottom">Our Specialized Units</h2>
    <div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
      <div class="feature col">
        <div class="feature-icon d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-2 mb-3">
          <svg class="bi" width="1em" height="1em"><use xlink:href="#collection"/></svg>
        </div>
        <h3 class="fs-2">MANUFACTURE UNIT</h3>
        <p>Manufacture any type of product you want and store its data here.
            Update your product data dynamically and store it in very efficient way.</p>
        <a href="<%= request.getContextPath() %>/register" class="icon-link d-inline-flex align-items-center">
          Visit
          <svg class="bi" width="1em" height="1em"><use xlink:href="#chevron-right"/></svg>
        </a>
      </div>
      <div class="feature col">
        <div class="feature-icon d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-2 mb-3">
          <svg class="bi" width="1em" height="1em"><use xlink:href="#people-circle"/></svg>
        </div>
        <h3 class="fs-2">WHOLESALE UNIT</h3>
        <p>Order the products from the Factory directly.
            Just check the Quantity available and place your order.
        </p>
        <a href="<%= request.getContextPath() %>/registerwholesale" class="icon-link d-inline-flex align-items-center">
          Visit
          <svg class="bi" width="1em" height="1em"><use xlink:href="#chevron-right"/></svg>
        </a>
      </div>
      <div class="feature col">
        <div class="feature-icon d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-2 mb-3">
          <svg class="bi" width="1em" height="1em"><use xlink:href="#toggles2"/></svg>
        </div>
        <h3 class="fs-2">RETAIL UNIT</h3>
        <p>Get exposure to all types of wholesalers.
            Get your customers easily and find your sales.</p>
        <a href="<%= request.getContextPath() %>/registerretail1" class="icon-link d-inline-flex align-items-center">
          Visit
          <svg class="bi" width="1em" height="1em"><use xlink:href="#chevron-right"/></svg>
        </a>
      </div>
      <br><br>
      
    </div>
  </div>
</div>
 <br><br><br><br>
 
 <div class="container">
  <footer class="py-3 my-4">
    <ul class="nav justify-content-center border-bottom pb-3 mb-3">
      <li class="nav-item"><a href="/supply_chain1/homepage" class="nav-link px-2 text-muted">Home</a></li>
      <li class="nav-item"><a href="<%= request.getContextPath() %>/register" class="nav-link px-2 text-muted">Manufacture unit</a></li>
      <li class="nav-item"><a href="<%= request.getContextPath() %>/registerwholesale" class="nav-link px-2 text-muted">Wholesale unit</a></li>
      <li class="nav-item"><a href="<%= request.getContextPath() %>/registerretail1" class="nav-link px-2 text-muted">Retail unit</a></li>
      <li class="nav-item"></li>
    </ul>
    <p class="text-center text-muted">&copy; 2023 Group II Company, Inc</p>
  </footer>
</div>

</body>
</html>