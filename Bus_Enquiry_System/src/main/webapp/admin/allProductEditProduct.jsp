
<%@page import ="sign_model.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="..//footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;"> <i class='fab fa-elementor'>All Products and Edit Products</i></div>
<%String msg = request.getParameter("msg");
if("done".equals(msg))
{%>
<h3 class="alert">Product Successfully Updated!</h3>
<%} %>
<% 
if("wrong".equals(msg))
{%>
<h3 class="alert">Some thing went wrong! Try again!</h3>
<%} %>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Bus Name</th>
            <th scope="col">Departure</th>
             <th scope="col">Arrival</th>
              <th scope="col"> price</th>
             
            <th scope="col">dateOf </th>
             
             <th scope="col">seats</th>
            
            <th scope="col">Edit <i class='fas fa-pen-fancy'></i></th>
          </tr>
        </thead>
        <tbody>
       <% 
       try{
    	   Connection con= ConnectionProvider.getCon();
    	   Statement st = con.createStatement();
    	   ResultSet rs= st.executeQuery("select * from buslist");
    	   while(rs.next()){
    		   
    	   
    
       %>
          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
            <td><%=rs.getString(5) %></td>
            <td><%=rs.getString(6) %></td>
            <td><%=rs.getString(7) %></td>
            <td><a href="editProduct.jsp?id=<%=rs.getString(1) %>">Edit <i class='fas fa-pen-fancy'></i></a></td>
          </tr>
          
          <% }
    	   }
    	   catch(Exception e)
    	   {
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