<%@page import = "sign_model.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="../css/bcss/bootstrap.min.css">
<link rel="stylesheet" href="../css/ordersReceived-style.css">
<title>Bookings</title>
<style>

h3
{
	color: black;
	text-align: center;
}
body{
background-image: url("../images/px.jpg");
 background-repeat: no-repeat;
  background-position: center;
   background-size: cover;
   padding-bottom: 444px;
}
th{
font-size:20px;
}
td{
font-size:15px;
}

</style>
</head>

<link rel="stylesheet" href="style.css">

<body>



<section>
<div style="color: white; text-align: center; font-size: 30px;">Book List <i class="fas fa-archive"></i></div>

<%
	String msg = request.getParameter("msg");
	if("cancel".equals(msg)) {
		%>
		<h3 class="alert">Order Cancel Successfully!</h3>
	<% }%>
	<%
	if("delivered".equals(msg)) {
		%>
		<h3 class="alert">Successfully Updated!</h3>
	<% }%>

	<%
	if("invalid".equals(msg)) {
		%>
		<h3 class="alert">Some thing went wrong! Try Again!</h3>
	<% }%>







<table class="table table-success table-striped table-hover table-bordered">
          <tr>
    		<th scope="col">ID</th>
            <th scope="col">Bus Name</th>
            <th scope="col">Departure</th>
            <th scope="col">Arrival</th>
            <th scope="col">Date</th>
            <th scope="col">Price</th>
            
            <th scope="col"> Email </th>
            <th scope="col">Bus_id</th>
            <th scope="col">Quantity</th>
            <th scope="col">Price</th>
             <th scope="col">total</th>
             <th scope="col">Phone</th>
              
          </tr>
        
                <tbody>
<% int sno=0;
try{
	Connection con=ConnectionProvider.getCon();
	Statement st= con.createStatement();
	ResultSet rs = st.executeQuery("select * from buslist join cart on cart.bus_id = buslist.id join users on users.email = cart.email");
	while(rs.next()){
	
%>
          <tr>
			<%sno=sno+1;%>
           <td><%out.println(sno); %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
             <td><%=rs.getString(4) %></td>
            <td><%=rs.getString(6) %> </td>
            <td><%=rs.getString(5) %></td>
             <td><%=rs.getString(8) %></td>
            <td><%=rs.getString(9) %> </td>
            <td><%=rs.getString(10) %></td>
            <td><%=rs.getString(11) %> </td>
            <td><%=rs.getString(12) %></td>
             
            <td><%=rs.getString(14) %> </td>
            
          </tr>
          
            <%
            }
            }
            catch(Exception e)
            {
            	System.out.println(e);
            }%>
         
         
        </table>
      <br>
      <br>
      <br>
</section>
</body>
</html>