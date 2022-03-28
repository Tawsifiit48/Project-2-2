<%@page import ="Project.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Cart</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">My Cart <i class='fas fa-cart-arrow-down'></i></div>

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




<table>
<thead>

          <tr>
            <th scope="col" style="background-color: yellow;">Total: <%out.println(total); %> <i class="fa fa-money"></i> </th>
            
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