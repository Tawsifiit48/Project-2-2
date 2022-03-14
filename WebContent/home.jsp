<%@page import = "Project.ConnectionProvider"%>
<%@page import = "java.sql.*"%>
<%@include file = "header.jsp"%>
<%@include file = "footer.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3
{
	color: black;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>

					<%
					String msg = request.getParameter("msg");
						if("added".equals(msg)) {
	
					%>
						<h3 class="alert">Product added successfully!</h3>
						<%}%>
					<%	
						if("exist".equals(msg)) {

					%>
						<h3 class="alert">Product already exist in you cart! Quantity  increased!</h3>
					<%}%>
					
					<%	
						if("invalid".equals(msg)) {

					%>
						<h3 class="alert">Something went wrong! Try again</h3>
					<%}%>
					







<table>
        <thead>
          <tr>
            <th scope="col">email</th>
            <th scope="col">from</th>
            <th scope="col">to</th>
            <th scope="col">date</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col">Book <i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>
<%        
        
        try {
	         Connection con = ConnectionProvider.getCon();
	         Statement st = con.createStatement();
	         ResultSet rs = st.executeQuery("select *from bus where active= 'Yes'");
         	 while(rs.next()) {         	 

%>
          <tr>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(4)%></td>
            <td><a href="">Book <i class='fas fa-cart-plus'></i></a></td>
          </tr>
<%
}
}
catch(Exception e) {
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