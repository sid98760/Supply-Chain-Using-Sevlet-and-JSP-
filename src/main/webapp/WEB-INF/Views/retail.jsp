<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
.form
{
	background: rgba(160, 160, 160, 0.4);
	padding: 20px;
	width: 550px;
	border-radius: 30px;
}
tr td
{
	padding:15px;
	color: white;
	font-size: 18px;
}
input[type=text], input[type=number] 
{
  width: 100%;
  margin: 8px 0;
  display: inline-block;
  border: 6px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=submit] 
{
  width: 400px;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 10px;
  cursor: pointer;
  font-size: 20px;
}

input[type=submit]:hover 
{
  background-color: #B2D2A4;
  color: black;
}
</style>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

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
          <a class="nav-link" href="<%= request.getContextPath() %>/homepage"> Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link"  href="<%= request.getContextPath() %>/register"> Manufacture unit</a>
        </li>
        <li class="nav-item">
          <a class="nav-link"  href="<%= request.getContextPath() %>/registerwholesale">Wholesale Unit</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="<%= request.getContextPath() %>/registerretail1">Retail Unit</a>
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
<body >

<br><br><br><br>

<div style="margin-left: 20px;">
	<div style=" position: absolute; background: rgba(160, 160, 160, 0.9); border-radius: 30px; top:350px; left: 485px; padding: 40px;" >
      <div>
      	<h3 align="center"><b>RETAIL UNIT </b></h3>
        	<p><b>Get exposure to all types of wholesalers.
            Get your customers easily and find your sales.</b></p>
      </div>
	</div>
	<img src="https://assets-global.website-files.com/5f2a93fe880654a977c51043/620fd215f344f16633f1aafc_hero_2.jpeg" alt="wholesale pic1" height="650" width="1650" style="border-radius: 30px;">
</div>



<div style="margin-left: 60px;">
	<img src="https://i.pinimg.com/originals/cf/83/db/cf83db51e7a566b33aa2dfdb15536dcc.gif" alt="manufacture pic2" width="650px" height="650px">
</div>

<div style="background-color: black; width: 715px; position: absolute; top:850px; left: 900px; padding: 40px; border-radius: 30px">
	<div id="overview">
	<h2 style="color: white;" align="center"> Overview of Retail Unit</h2>
	</div>
	<br>
	<p style="color: white; font-size: 20px;"> 
	 Welcome to Retail Unit. You can order any types of commodities you want through our platform. 
	 Retailers play a significant role in supply chain. Retailers are the face of supply chain because 
	 they are the applying the skills of marketing selling the final product which is ready for sale. 
	 You can directly order your commodities from any wholesaler REGISTERED. Our platform also helps 
	 showing the available quantities of a particular product and particular wholesaler. The data shown 
	 there is perfect and accurate as well. Based on the quantity available you can place the order by 
	 filling the form for retailers orders. Please check the quantity and fill your retail order form accordingly.
</p> 
</div>


<br><br><br>

<div align="center" style="background-color: black; padding: 50px; width: 1650px; margin-left: 25px; border-radius: 30px;">
 <form class="form" action="<%= request.getContextPath() %>/showretailquantity" method="post">
  <h1 style="color:white;" > CHECK QUANTITY </h1>
 <table style="margin: 20px;">
 	<tr>
     <td>Product Name</td>
     <td><input type="text" name="product_name2" /></td>
    </tr>
 	<tr>
     <td>Wholesaler Name</td>
     <td><input type="text" name="wholesaler_name2" /></td>
    </tr>
    
 </table>
 <input type="submit" value="Submit" />
 </form>
 
 <br>
 <br>
</div>

<br><br>

<div align="center" style="background-color: black; padding: 50px; width: 1650px; margin-left: 25px; border-radius: 30px;">
  <form class="form" action="<%= request.getContextPath() %>/registerretail1" method="post">
   <h1 style="color:white;" > ORDER FORM FOR RETAILER </h1>
   <table style="with: 80%">
    <tr>
     <td>Retail ID </td>
     <td><input type="number" name="retail_id" /></td>
    </tr>
    <tr>
     <td>Retail Name</td>
     <td><input type="text" name="retail_name" /></td>
    </tr>
    <tr>
     <td>Location</td>
     <td><input type="text" name="location" /></td>
    </tr>
     <tr>
     <td>Product Name</td>
     <td><input type="text" name="product_name" /></td>
    </tr>
    <tr>
     <td>Quantity</td>
     <td><input type="number" name="quantity" /></td>
    </tr>
    <tr>
     <td>Retail Amount in Rs.</td>
     <td><input type="number" name="retail_amount" /></td>
    </tr>
    <tr>
     <td>Retail Date </td>
     <td><input type="text" name="retail_date" /></td>
    </tr>
    <tr>
     <td>Wholesaler Name</td>
     <td><input type="text" name="wholesaler_name" /></td>
    </tr>
   </table>
   <br>
   <input type="submit" value="Submit" />
  </form>
 </div>
 
<br><br><br>
 
 <div class="container">
  <footer class="py-3 my-4">
    <ul class="nav justify-content-center border-bottom pb-3 mb-3">
      <li class="nav-item"><a href="/supply_chain1/homepage" class="nav-link px-2 text-muted">Home</a></li>
      <li class="nav-item"><a href="<%= request.getContextPath() %>/register" class="nav-link px-2 text-muted">Manufacture unit</a></li>
      <li class="nav-item"><a href="<%= request.getContextPath() %>/registerwholesale" class="nav-link px-2 text-muted">Wholesale unit</a></li>
      <li class="nav-item"><a href="<%= request.getContextPath() %>/registerretail1" class="nav-link px-2 text-muted">Retail unit</a></li>
    </ul>
    <p class="text-center text-muted">&copy; 2022 Company, Inc</p>
  </footer>
</div>

 <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>