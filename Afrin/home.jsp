<%@page import ="sign_model.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%@include file="header.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
body{
background-image: url("./images/sea.jpg");
 background-repeat: no-repeat;
  background-position: center;
   background-size: cover;
}
</style>
</head>
<body>

<div style="color: black; background-color:white; opacity: 0.5; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>
<br>
<br>

<%String msg=request.getParameter("msg");
if("added".equals(msg))
{
%>
<h3 class="alert">Product added successfully!</h3>
<%} %>
<%
if("exists".equals(msg))
{
%>
<h3 class="alert">Product already exist in you cart! Quantity  increased!</h3>
<%} %>
<%

if("invalid".equals(msg))
{
%>
<h3 class="alert">ERROR!</h3>
<%} %>


            <div class="search-container" style="padding-left:400px ;" >
            <form action="searchHome.jsp" method="post">
            
             &nbsp<input type="text" class="box pall" placeholder="From" name="search">
            <input type="text" class="box pall" placeholder="To" name="search">
            
            <input type="date" class="box pall" placeholder="Journey Date" name="search">
             
          
           
             <button type="submit"> <i class="fa fa-search pall"></i></button> 
</form>
             
            </div>
            <br>
<br>
<table class="table table-success table-striped table-hover table-bordered">
        <thead>
          <tr>
             <th scope="col">ID</th>
            <th scope="col">Bus Name</th>
            <th scope="col">Departure</th>
             <th scope="col">Arrival</th>
              <th scope="col"> Price(tk)</th>
            <th scope="col"><i>DateOf </i></th>
             <th scope="col">seats</th>
            <th scope="col">Add to cart<i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>
<%
try{
	Connection con= ConnectionProvider.getCon();
	Statement st= con.createStatement();
	ResultSet rs = st.executeQuery("select * from buslist");

	while(rs.next()){


	%>
	          <tr>
	           <td><%=rs.getString(1)%></td>
	            <td><%=rs.getString(2)%></td>
	            <td><%=rs.getString(3) %></td>
	            <td><%=rs.getString(4) %></td>
	             <td><%=rs.getString(5) %></td>
	              <td><%=rs.getString(6) %></td>
	               <td><%=rs.getString(7) %></td>
	            <td><a href="addToCartAction.jsp">Add to cart<i class='fas fa-cart-plus'></i></a></td>
	          </tr>
	<% 
	}
	}
	catch(Exception e){
		System.out.println(e);
	}
	%>
	         
	        </tbody>
	      </table>
      <br>
      <br>
      <br>

</body>
</html>