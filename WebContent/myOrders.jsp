<%@page import ="Project.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%@include file="header.jsp" %>
<html>
<head>
<link rel="stylesheet" href="./css/bcss/bootstrap.min.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/9cf14037e4.js" crossorigin="anonymous"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bookings</title>
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
<div style="color: white; text-align: center; font-size: 30px;">My Orders <i class='fab fa-elementor'></i></div>
<table class="table table-success table-striped table-hover table-bordered">
        <thead>
          <tr>
            <th scope="col">S.No</th>
            <th scope="col">Transactoin ID</th>
            <th scope="col">Bus Name</th>
            <th scope="col">From</th>
            <th scope="col">To</th>
            <th scope="col"><i class="fa fa-money"></i>  Price</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class="fa fa-money"></i> Sub Total</th>
            <th scope="col">Order Date</th>
              
          </tr>
        </thead>
        <tbody>
<% int sno=0;
try{
	Connection con=ConnectionProvider.getCon();
	Statement st= con.createStatement();
	ResultSet rs = st.executeQuery("select *from buslist inner join cart where cart.bus_id = buslist.id and cart.email='"+email+"' ");
	while(rs.next()){
	
%>
          <tr>
			<%sno=sno+1;%>
           <td><%out.println(sno); %></td>
           <td><%=rs.getString(13) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
             <td><%=rs.getString(4) %></td>
            <td><%=rs.getString(5) %> </td>
            <td><%=rs.getString(10) %></td>
             <td><%=rs.getString(10) %></td>
            <td><%=rs.getString(6) %> </td>
            
          </tr>
          
            <%
            }
            }
            catch(Exception e)
            {
            	System.out.println(e);
            }%>
         
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>
























