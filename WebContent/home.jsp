<%@page import ="Project.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<!-- <style>
h3
{
	color: yellow;
	text-align: center;
}
</style> -->
</head>
 <div class="search-container">
            <form action="searchHome.jsp" method="post">
            
             <input type="text" class="box" placeholder="From" name="search">
            <input type="text" class="box" placeholder="To" name="search">
            
            <input type="date" class="box" placeholder="Journey Date" name="search">
             
          
           
             <button type="submit"> <i class="fa fa-search"></i></button> 
</form>
             
            </div>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>
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
<table>
        <thead>
          <tr>
             <th scope="col">ID</th>
            <th scope="col">Bus Name</th>
            <th scope="col">Departure</th>
             <th scope="col">Arrival</th>
              <th scope="col"> Price(tk)</th>
            <th scope="col"><i>DateOf </i>  </th>
             <th scope="col">seats</th>
             <th scope="col">type</th>
            <th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>
<%
try{
	Connection con= ConnectionProvider.getCon();
	Statement st= con.createStatement();
	ResultSet rs = st.executeQuery("select * from buslist");

	while(rs.next()){
		int temp = rs.getInt(9);
		if(temp == 1) {
			%>
			
	          <tr>
	           <td><%=rs.getString(1) %></td>
	            <td><%=rs.getString(2) %></td>
	            <td><%=rs.getString(3) %></td>
	            <td><%=rs.getString(4) %></td>
	             <td><%=rs.getString(5) %></td>
	              <td><%=rs.getString(6) %></td>
	               <td><%=rs.getString(7) %></td>
	               <td><%=rs.getString(8) %></td>
	               
	            <td><a href="addToCartAction.jsp?id=<%=rs.getString(1) %>">Add to cart <i class='fas fa-cart-plus'></i></a></td>
	          </tr>
	<% 		
		}
	
	
	}
	}
	catch(Exception e){
		System.out.println("Exception found in home");
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