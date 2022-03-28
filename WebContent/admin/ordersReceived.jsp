<%@page import = "Project.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="../css/ordersReceived-style.css">
<title>Home</title>
<style>
.th-style
{ width: 25%;}
tr,td{
        font-size:13px;
        }
</style>
</head>
<link rel="stylesheet" href="css/table.css">
<link rel="stylesheet" href="style.css">

<body>

<header>

        <div id="menu-bar" class="fas fa-bars"></div>

        <a href="#" class="logo"><span>T</span>ravel with <span>T</span>ransport</a>

        <nav class="navbar">
            <a href="addNewProduct.jsp">Add New Bus</a>
            <a href="addNewProduct2.jsp">Add New Train</a>
            <a href="addNewProduct3.jsp">Add New Launch</a>
            <a href="allProductEditProduct.jsp">View & Edit</a>
            <a href="messagesReceived.jsp">Message</a>
            <a href="ordersReceived.jsp">Bookings</a>
        </nav>

        <div class="dropdown">
            <a href="../index.jsp">
                <button class="dropbtn">Logout</button>
            </a>
        </div>

    </header>

<section class="home" id="home">
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







<table id="customers">
          <tr>
    		<th scope="col">ID</th>
            <th scope="col">Bus Name</th>
            <th scope="col">Departure</th>
            <th scope="col">Arrival</th>
            <th scope="col">Date</th>
            <th scope="col"> Email </th>
            <th scope="col">Price</th>
            
            
            <!-- <th scope="col">Bus_id</th> -->
            <th scope="col">Quantity</th>
            <!-- <th scope="col">Price</th> -->
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
            <td><%=rs.getString(8) %></td>
            <td><%=rs.getString(5) %></td>
             
            <%-- <td><%=rs.getString(9) %> </td> --%>
            <td><%=rs.getString(10) %></td>
            <%-- <td><%=rs.getString(11) %> </td> --%>
            <td><%=rs.getString(12) %></td>
             
            <td><%=rs.getString(15) %> </td>
            
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