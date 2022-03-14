<%@page import = "Project.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="..//footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Bus</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
	
%>

<h3 class="alert">Bus Added Successfully!</h3>
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
<form action="addNewProductAction.jsp" method="post">


<h3 style="color: black;">Product ID:<%out.println(id); %> </h3>
<input type="hidden" name="id" value="<%out.println(id); %>">

<div class="left-div">
 <h3>Enter Bus Name</h3>
 <input class="input-style" type="text" name="busname" placeholder="Enter BusName"required>
 
<hr>
</div>

  
 
   
<div class="right-div">
<h3>Enter departure</h3>
 <input class="input-style" type="text" name="departure" placeholder="Enter departure place"required>
 
<hr>
</div>

   
<div class="left-div">
<h3>Enter arrival</h3>
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
<br>
    <br> 
    <br>
    <br>
    <br>
    <br> 
    <br>
    <br>
 <button class="button">Save <i class='far fa-arrow-alt-circle-right'></i></button>
 
</form>
</body>
<br><br><br>
</body>
</html>