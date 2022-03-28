<%@page import ="Project.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<link rel="stylesheet" href="./css/bcss/bootstrap.min.css">
<title>My Cart</title>
<style>
h3
{
	color: black;
	text-align: center;
}
body{
background-image: url("./images/sea.jpg");
 background-repeat: no-repeat;
  background-position: center;
   background-size: cover;
}
.thc{
color: #F6D6A6;
}
</style>
</head>
<body>
<div style="color: black; background-color:white; opacity: 0.5; text-align: center; font-size: 30px;">My Cart <i class='fas fa-cart-arrow-down'></i></div>

<%String msg=request.getParameter("msg");
if("notPossible".equals(msg))
{
%>
<h3 class="alert">There is only one Quantity! So click on remove!</h3>
<%} %>

<%
if("full".equals(msg))
{
%>
<h3 class="alert">No seat available</h3>
<%} %>

<%
if("inc".equals(msg))
{
%>
<h3 class="alert">Quantity  Increased Successfully!</h3>
<%} %>


<%

if("dec".equals(msg))
{
%>
<h3 class="alert">Quantity  Decreased Successfully!</h3>
<%} %>



<%

if("removed".equals(msg))
{
%>
<h3 class="alert">Product Successfully Removed!</h3>
<%} %>

<%

int total = 0;
int sno = 0;

try {
	Connection con= ConnectionProvider.getCon();
	Statement st= con.createStatement();
	ResultSet rs1 = st.executeQuery("select sum(total) from cart where email = '"+email+"'");
	while(rs1.next()) {
		total = rs1.getInt(1);
%>




 <table class="table table-success table-striped table-hover table-bordered">
<thead>

          <tr>
            <th scope="col" style="background-color: #DEF1F1;"">Total: <%out.println(total); %> <i class="fa fa-money"></i> </th>
            
          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">S.No</th>
          <th scope="col">Transactoin ID</th>
            <th scope="col">Transport Name</th>
            <th scope="col">From</th>
            <th scope="col">To</th>
            <th scope="col"><i class="fa fa-money"></i>price</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class="fa fa-money"></i>Sub Total</th>
            <th scope="col">Remove <i class='fas fa-trash-alt'></i></th>
          </tr>
        </thead>
        <tbody>
      <%
      
      	ResultSet rs = st.executeQuery("select * from buslist inner join cart on buslist.id = cart.bus_id and cart.email ='"+email+"'");
 
  
      while(rs.next()) 
      	{
      		
      	
      %>
          <tr>
			<%sno=sno+1;%>
           <td><%out.println(sno); %></td>
           <td><%=rs.getString(15) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
             <td><%=rs.getString(4) %></td>
            <td><i class="fa fa-money"></i><%=rs.getString(5) %> </td>
            <td><a href="incDecQuantityAction.jsp?id=<%=rs.getString(1)%> &quantity=inc"><i class='fas fa-plus-circle'></i></a> <%=rs.getString(12) %> <a href="incDecQuantityAction.jsp?id=<%=rs.getString(1)%> &quantity=dec"><i class='fas fa-minus-circle'></i></a></td>
            <td><i class="fa fa-money"></i><%=rs.getString(14) %> </td>
            <td><a href="removeFromCart.jsp?id=<%=rs.getString(1)%>">Remove <i class='fas fa-trash-alt'></i></a></td>
          </tr>
          
          <%
 
        	
      	}
          
  		
    	}

    }
    catch(Exception e) {
    	System.out.println("Exception found in mycart");
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
