<%@page import = "Project.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="..//footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="../css/ordersReceived-style.css">
<title>Home</title>
<style>
.th-style
{ width: 25%;}
</style>
</head>
<body>
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
            <!-- <th scope="col"><i class="fa fa-inr"></i> Sub Total</th> -->
            <th scope="col">Arrival</th>
            <th scope="col">Date</th>
            <th scope="col">Price</th>
            <th scope="col">Seat</th>
            <th scope="col"> Email </th>
            <th scope="col">Bus_id</th>
            <th scope="col">Quantity</th>
            <th scope="col">Price</th>
             <th scope="col">total</th>
             <th scope="col">Phone</th>
              
          </tr>
        
        <%
        
        	int sno = 0;
        try {
        	Connection con = ConnectionProvider.getCon();
        	Statement st = con.createStatement();
        	ResultSet rs = st.executeQuery("select * from buslist inner join cart where curt.bus_id = buslist.id");
       			
        	while(rs.next()) 
        	{
        		sno = sno + 1;
        	%>	
        	
          <tr>
          <td><%=rs.getString(10)%></td>
            <td><%=rs.getString(10)%></td>
            <td><%=rs.getString(10)%></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(10)%> </td>
                <td><%=rs.getString(10)%></td>
               <td><%=rs.getString(10)%></td>
                <td><%=rs.getString(10)%></td>
                 <td><%=rs.getString(10)%></td>
             <td><%=rs.getString(10)%></td>
              <td><%=rs.getString(10)%></td>
               <td><%=rs.getString(10)%></td>
               <td><%=rs.getString(10)%></td>
               <td><%=rs.getString(10)%></td>
            </tr>
            
            <%}   
            
            }
            
            catch(Exception e) {
            	System.out.println(e);
            }
           
            %>
         
        </table>
      <br>
      <br>
      <br>

</body>
</html>