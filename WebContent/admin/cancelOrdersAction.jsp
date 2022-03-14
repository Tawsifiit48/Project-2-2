<%@page import = "Project.ConnectionProvider"%>
<%@page import ="java.sql.*"%>

<% 
String id = request.getParameter("id");
String email = request.getParameter("email");
String status = "Cancel";
try {
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("update cart set = '"+status+"' where bus_id = '"+id+"' and email = '"+email+"'");
	response.sendRedirect("ordersReceived.jsp?msg=Cancel");
}
catch(Exception e) {
	System.out.println(e);
	response.sendRedirect("ordersReceived.jsp?msg=wrong");
	
}

%>