<%@page import ="Project.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>
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
            <th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>
<%
int z=0;
try{
String search=request.getParameter("search");	

Connection con= ConnectionProvider.getCon();
Statement st= con.createStatement();
ResultSet rs = st.executeQuery("select * from buslist where departure like '%"+search+"%' or arrival like '%"+search+"%' or dateOf like '%"+search+"%'");

while(rs.next()){
z=1;

%>
          <tr>
           <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
             <td><%=rs.getString(5) %></td>
              <td><%=rs.getString(6) %></td>
               <td><%=rs.getString(7) %></td>
            <td><a href="addToCartAction.jsp">Add to cart <i class='fas fa-cart-plus'></i></a></td>
          </tr>
<% 
}
}
catch(Exception e){
	System.out.println(e);
}
%>
         
        </tbody>
      </table>
      	<%if(z==0){ %>
      	
	<h1 style="color:white; text-align: center;">Nothing to show</h1>
	<%} %>
      <br>
      <br>
      <br>
      <div class="footer">
          <p>All right reserved by BTech Days</p>
      </div>

</body>
</html>