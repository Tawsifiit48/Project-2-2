<%@page import = "Project.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="./css/bcss/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
tr{
        font-size:20px;
        }
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

<link rel="stylesheet" href="css3/table.css">
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


<div style="color: black; text-align: center; font-size: 30px;">Messages Received <i class='fas fa-comment-alt'></i></div>
<table class="table table-success table-striped table-hover table-bordered">
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Email</th>
            <th scope="col">Subject</th>
            <th scope="col">Body</th>
          </tr>
        </thead>
        <tbody>
<%
	try{
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select *from message");
		while(rs.next())
		{
%>			
		      
          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
          </tr>
          <%
          }}
	catch(Exception e) {
		System.out.println(e);
	}%>
         
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>
