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
	padding:6px;
	color: white;
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
input[type=submit] {
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

input[type=submit]:hover {
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
          <a class="nav-link active" aria-current="page"  href="<%= request.getContextPath() %>/register"> Manufacture unit</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%= request.getContextPath() %>/registerwholesale">Wholesale Unit</a>
        </li>
        <li class="nav-item">
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
<body>
<br><br><br><br>

<div style="margin-left: 20px;">
	<div style=" position: absolute; background: rgba(160, 160, 160, 0.9); border-radius: 30px; top:350px; left: 290px; padding: 40px;" >
      <div>
      	<h3 align="center"><b>MANUFACTURE UNIT </b></h3>
        	<p><b>Manufacture any type of product you want and store its data here.
            Update your product data dynamically and store it in very efficient way.</b></p>
      </div>
	</div>
	<img src="https://www.manufacturingtodayindia.com/cloud/2021/11/17/YU2QxRPA-AI-VR-feature.jpg" alt="manufacture pic1" height="650" width="1650" style="border-radius: 30px;">
</div>

<br><br>

<div style="margin-left: 60px; margin-top: 40px;">
	<img src="https://i.pinimg.com/originals/90/c2/bd/90c2bd3350b9804f8e12b5a35b304e58.gif" alt="manufacture pic2" width="650px" height="650px">
</div>

<div style="background-color: black; width: 715px; position: absolute; top:800px; left: 900px; padding: 40px; border-radius: 30px">
	<div id="overview">
	<h2 style="color: white;" align="center"> Overview of Manufacturing Unit</h2>
	</div>
	<br>
	<p style="color: white; font-size: 20px;"> Welcome to Manufacturing Unit. You can enter the data of all types of commodities data are maunfactured
in your factory. The following form will give you the idea on how this unit works. Production is one 
of the most important part on supply chain system. And each product produce should always has its own data
for easy management. Supply chain solutions gives you the platform to store your manufacturing data online.
You can store Packet ID's of each commodity produced, Product ID and it's name, Manufacturing date, Amount of 
manufacturing which will always include your profits and its the same amount at which you could sell your products 
to wholesalers. Register your products here. Our wide range of wholesalers and your wholesalers can 
easily order the commodities from our platforms wholesale unit easily. Please fill the form below to register your today's manufacture. 
</p> 
</div>

<br>

<div align="center" style="background-color: black; padding: 50px; width: 1650px; margin-left: 25px; border-radius: 30px;">
<div class="form">
  <h1 style="color:white;"> MANUFACTURING UNIT </h1>
 
  <form action="<%= request.getContextPath() %>/register" method="post">
   <table style="margin: 20px;">
    <tr>
     <td>Packet ID (Start no.) </td>
     <td><input type="number" name="packet_id_min" /></td>
    </tr>
    <tr>
     <td>Packet ID (End no.)</td>
     <td><input type="number" name="packet_id_max" /></td>
    </tr>
    <tr>
     <td>Product ID</td>
     <td><input type="text" name="product_id" /></td>
    </tr>
    <tr>
     <td>Product Name</td>
     <td><input type="text" name="product_name" /></td>
    </tr>
    <tr>
     <td>Factory Name</td>
     <td><input type="text" name="factory_name" /></td>
    </tr>
    <tr>
     <td>Manufacture Amount in Rs.</td>
     <td><input type="text" name="manufacture_amount" /></td>
    </tr>
    <tr>
     <td>Manufacture Date</td>
     <td><input type="text" name="manufacture_date" /></td>
    </tr>
   </table>
   <br>
   <input type="submit" value="Submit" />
  </form>
 </div>
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
 
</body>
</html>