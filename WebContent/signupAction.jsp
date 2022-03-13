<%@page import = "Project.ConnectionProvider"%>
<%@page import = "java.sql.*"%>

<%

	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String password2 = request.getParameter("password2");
	try{
		Connection con = ConnectionProvider.getCon();
		PreparedStatement ps = con.prepareStatement("insert into users values(?, ?, ?)");
		ps.setString(1, email);
		ps.setString(2, password);
		ps.setString(3, password2);
		ps.executeUpdate();
		response.sendRedirect("login.jsp?msg=valid");
		
	}
	catch(Exception e) {
		System.out.println(e);
		response.sendRedirect("login.jsp?msg=invalid");
	}


%>