<%@page import ="Project.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%
String id=request.getParameter("id");
String busname=request.getParameter("busname");
String departure=request.getParameter("departure");
String arrival=request.getParameter("arrival");
String dateOf=request.getParameter("dateOf");
String price=request.getParameter("price");
String seats=request.getParameter("seats");

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("update buslist set busname='"+busname+"' ,departure='"+departure+"',arrival='"+arrival+"',dateOf='"+dateOf+"',price='"+price+"',seats='"+seats+"'where id='"+id+"'");
	
	
	
}
catch(Exception e){
	System.out.println(e);
}
%>