<%@page import = "sign_model.ConnectionProvider"%>
<%@page import = "java.sql.*"%>

<%
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	if("admin@gmail.com".equals(email) && "admin".equals(password)) {
		System.out.println("admin");
		session.setAttribute("email", email);
		response.sendRedirect("admin/adminHome.jsp"); //admin page
	}
	else {
		System.out.println("2");
		int z = 0;
		try {
			Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select *from user1 where email = '"+email+"' and password = '"+password+"'");
			while(rs.next()) {
				z = 1;
				session.setAttribute("email", email);
				response.sendRedirect("index.jsp"); //for user
			}
			if(z == 0) {
				response.sendRedirect("login.jsp?msg=notexist");
			}
		}
		catch(Exception e) {
			System.out.println(e);
			response.sendRedirect("login.jsp?msg=invalid");
		}
	}
%>