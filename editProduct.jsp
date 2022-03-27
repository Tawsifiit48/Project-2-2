<%@page import ="sign_model.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="..//footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Bus</title>
<style>
.back
{
  color: white;
  margin-left: 2.5%
}
body{
background-image: url("../images/px.jpg");
 background-repeat: no-repeat;
  background-position: center;
   background-size: cover;
   padding-bottom: 444px;
}
</style>
</head>
<body>
 <h2><a class="back" href="allProductEditProduct.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>
<% 
String id=request.getParameter("id");
try{
	 Connection con= ConnectionProvider.getCon();
	   Statement st = con.createStatement();
	   ResultSet rs= st.executeQuery("select * from buslist where id='"+id+"'");
	   
	   while(rs.next()){
		   

%>
<form action="editProductAction.jsp"  method="post">
<input type="hidden" name="id" value=<% out.println(id); %>">

<div class="left-div">
 <h3>Enter Bus Name</h3>
<input class="input-style" type="text" name="busname" value="<%=rs.getString(2)%>" required>
<hr>
</div>

<div class="right-div">
<h3>Enter Departure Time</h3>
 <input class="input-style" type="text" name="departure" value="<%=rs.getString(3)%>" required>
<hr>
</div>

<div class="left-div">
<h3>Enter Arrival time</h3>
 <input class="input-style" type="text" name="arrival" value="<%=rs.getString(4)%>" required>
<hr>
</div>

<div class="right-div">
<h3>DateOF</h3>
<input class="input-style" type="text" name="dateOf" value="<%=rs.getString(5)%>" required>
 <hr>
</div>
<div class="left-div">
<h3>Enter Price</h3>
 <input class="input-style" type="text" name="price" value="<%=rs.getString(6)%>" required>
<hr>
</div>
<div class="right-div">
<h3>seats</h3>
<input class="input-style" type="number" name="seats" value="<%=rs.getString(7)%>" required>

 <hr>
</div>
<button class="button">save<i class='far fa-arrow-alt-circle-right'></i></button>
 </form>

  <% }
    	   }
    	   catch(Exception e)
    	   {
    		   System.out.println(e);
    	   }

    	   %>
         

</body>
<br><br><br>
</body>
</html>