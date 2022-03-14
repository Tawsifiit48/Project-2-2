
<%@page import ="sign_model.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%

String name = request.getParameter("name");
String phone = request.getParameter("phone");
String email = request.getParameter("email");
String password = request.getParameter("password");

try{
	
	Connection con=ConnectionProvider.getCon();
	System.out.println(1);
	PreparedStatement ps = con.prepareStatement("insert into user1 values(?,?,?,?)") ;
	System.out.println(2);
	ps.setString(1,name);
	System.out.println(3);
	ps.setString(2,phone);
	System.out.println(4);
	ps.setString(3,email);
	System.out.println(5);
	ps.setString(4,password);
	System.out.println(6);
	ps.executeUpdate();
	System.out.println(7);

	
	response.sendRedirect("signup.jsp?msg=valid");
	System.out.println(8);
}

catch(Exception e){
	System.out.println(password);
	

	System.out.println(e);
	response.sendRedirect("signup.jsp?msg=invalid");
}
%>