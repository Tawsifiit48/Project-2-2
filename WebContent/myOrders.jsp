<%@page import ="Project.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">My Orders <i class='fab fa-elementor'></i></div>
<table>
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
























