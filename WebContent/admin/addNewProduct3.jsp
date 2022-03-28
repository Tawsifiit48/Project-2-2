<%@page import = "Project.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Bus</title>
</head>
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
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
	
%>

<h3 class="alert">Added Successfully!</h3>
<%}%>
<%

if("wrong".equals(msg))
{
	
%>

<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%}%>
<% int id=1;
try{
	Connection con = ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs = st.executeQuery("select max(id) from buslist");
	while(rs.next()){
		id=rs.getInt(1);
		id=id+1;
	}
}

catch(Exception e){
	
}
%>
<form action="addNewProductAction.jsp?temp=3" method="post">

<%-- 
<h3 style="color: black;">Product ID:<%out.println(id); %> </h3> --%>
<input type="hidden" name="id" value="<%out.println(id); %>">

<div class="left-div">
 <h3>Enter Launch Name</h3>
 <input class="input-style" type="text" name="busname" placeholder="Enter LaunchName"required>
 
<hr>
</div>

  
 
   
<div class="right-div">
<h3>Enter departure</h3>
 <input class="input-style" type="text" name="departure" placeholder="Enter departure place"required>
 
<hr>
</div>

   
<div class="left-div">
<h3 >Enter arrival</h3>
  <input class="input-style" type="text" name="arrival" placeholder="Enter Arrival place"required>
<hr>
</div>

   
<div class="right-div">
<h3>Enter Ticket Price</h3>
 <input class="input-style" type="number" name="price" placeholder="Enter price"required>
   
<hr>
</div>
<div class="left-div">
<h3>Enter date of departure</h3>
  <input class="input-style" type="text" name="dateOf" placeholder="Enter date"required>
<hr>
</div>

    
<div class="right-div">
<h3>Enter available seats</h3>
 <input class="input-style" type="number" name="seats" placeholder="Enter Seats"required>
 
<hr>
</div>
	
<div class="left-div">
<h3>Enter  class</h3>
  <input class="input-style" type="text" name="type" placeholder="Enter class"required>
<hr>
</div>
	
<br>
    <br> 
    <br>
    <br>
    <br>
    <br> 
    <br>
    <br>
 <div class="wrapper">
        <button class="button" >Save <i class='far fa-arrow-alt-circle-right'></i></button>
    </div>
 
 
 
</form>
</body>
<br><br><br>
</section>
</body>
</html>