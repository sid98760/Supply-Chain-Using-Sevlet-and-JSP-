<%@ page language="java" contentType="text/html; charset=UTF-8" import= "java.sql.*"  import = "supply_chain1.model.wholesale" import = "supply_chain1.dao.wholesaledao"
    pageEncoding="UTF-8" %>
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
          <a class="nav-link active" aria-current="page" href="<%= request.getContextPath() %>/registerwholesale">Wholesale Unit</a>
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
<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>



<div align="center" style="background-color: #FEF1E6">

<br>
<br>
<br>
<br>
<br>

  <h1> THE AVAIALABLE QUANTITY AT FACTORY</h1>
  <br>
  
  <table class="table table-dark table-striped">
  <tr>
  	<td> <b>   Packet ID         </b></td>
  	<td> <b>   Product ID        </b></td>
  	<td> <b>   Product Name      </b></td>
  	<td> <b>   Factory Name      </b></td>
  	<td> <b>   Manufacture Amount</b></td>
  	<td> <b>   Manufacture Date  </b></td>
  	<td> <b>   Wholesale_name    </b></td>
  	
  </tr>
  <%
 
		
  Class.forName("com.mysql.cj.jdbc.Driver");
	try 
	{
		
		Connection connection = DriverManager
		        .getConnection("jdbc:mysql://localhost:3306/supplychain", "siddhesh", "bestsiddhesh");
		
		System.out.println("Connected!!");
			
		
		String query  = "SELECT * FROM showquantity; ";
		
		PreparedStatement p = connection.prepareStatement(query);
		//p.setString(1, factory_name);
		ResultSet r = p.executeQuery();
    	int count = 0;
   	
    	while (r.next())
    	{
    		
  %>
  <tr>
		<td><%=r.getString("packet_id")  %></td>
		<td><%=r.getString("product_id")  %></td>
		<td><%=r.getString("product_name")  %></td>
		<td><%=r.getString("factory_name")  %></td>
		<td><%=r.getString("manufacture_amount")  %></td>
		<td><%=r.getString("manufacture_date")  %></td>
		<td><%=r.getString("wholesale_name")  %></td>
	</tr>
  
  
  
 <%
  count = count + 1 ;
		}
		connection.close();
		
		
	%>
	<br>
	<br>
	<tr>
	<p style="font-size:24px;"> <b>The Available quantity is: <%= count %></b> </p>
	</tr>
  	<% 
	
	}
	catch(Exception e)
	{
	System.out.println(e);
	}
%>

  </table>
  
  
  
  
</div>


<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
 
 <div class="container">
  <footer class="py-3 my-4">
    <ul class="nav justify-content-center border-bottom pb-3 mb-3">
      <li class="nav-item"><a href="<%= request.getContextPath() %>/homepage" class="nav-link px-2 text-muted">Home</a></li>
      <li class="nav-item"><a href="<%= request.getContextPath() %>/register" class="nav-link px-2 text-muted">Manufacture unit</a></li>
      <li class="nav-item"><a href="<%= request.getContextPath() %>/registerwholesale" class="nav-link px-2 text-muted">Wholesale unit</a></li>
      <li class="nav-item"><a href="<%= request.getContextPath() %>/registerretail1" class="nav-link px-2 text-muted">Retail unit</a></li>
    </ul>
    <p class="text-center text-muted">&copy; 2022 Company, Inc</p>
  </footer>
</div>

</body>
</html>