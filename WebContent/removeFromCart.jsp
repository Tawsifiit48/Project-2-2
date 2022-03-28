<%@page import ="Project.ConnectionProvider"%>
<%@page import ="java.sql.*"%>


<%
int total = 0;
String email=session.getAttribute("email").toString();
String bus_id = request.getParameter("id");

try {
	Connection con= ConnectionProvider.getCon();
	Statement st= con.createStatement();
	
	ResultSet rs = st.executeQuery("select * from cart where email = '"+email+"' and bus_id = '"+bus_id+"'");
	
	if(rs.next()) {
		total = rs.getInt(3);
	}
	
	
	Connection conn = ConnectionProvider.getCon();
	Statement st2 = conn.createStatement();
	ResultSet rs2 = st.executeQuery("select seats from buslist where id = '"+bus_id+"'");
	
	
	if(rs2.next()) {
		total = total + rs2.getInt(1);
	}
	st.execute("update buslist set seats = '"+total+"' where id = '"+bus_id+"'");
	
	st.executeUpdate("delete from cart where email = '"+email+"' and bus_id = '"+bus_id+"'");
	response.sendRedirect("myCart.jsp?msg=removed");
	
} catch(Exception e) {
	System.out.println("found in remove");
	System.out.println(e);
}
%>