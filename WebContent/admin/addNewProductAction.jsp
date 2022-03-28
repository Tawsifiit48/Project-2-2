<%@page import ="Project.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%
String id=request.getParameter("id");
String busname=request.getParameter("busname");
String departure=request.getParameter("departure");
String arrival=request.getParameter("arrival");
String price=request.getParameter("price");
String dateOf=request.getParameter("dateOf");
String seats=request.getParameter("seats");
String type = request.getParameter("type");
String flag = request.getParameter("temp");

try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps= con.prepareStatement("insert into buslist values(?,?,?,?,?,?,?,?,?)");
	ps.setString(1,id);
	ps.setString(2,busname);
	ps.setString(3,departure);
	ps.setString(4,arrival);
	ps.setString(5,price);
	ps.setString(6,dateOf);
	ps.setString(7,seats);
	ps.setString(8, type);
	ps.setString(9, flag);
	ps.executeUpdate();
	response.sendRedirect("addNewProduct.jsp?msg=done");
}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("addNewProduct.jsp?msg=wrong");
	
	
}
%>
