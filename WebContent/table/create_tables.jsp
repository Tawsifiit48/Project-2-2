<%@page import = "Project.ConnectionProvider"%>
<%@page import = "java.sql.*"%>

<%
try {
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	String q1 = "create table users(email varchar(100)primary key, password varchar(100), password2 varchar(100))";
	System.out.print(q1);
	st.execute(q1);
	System.out.print("Table created");
	con.close();
}
catch(Exception e) {
	System.out.print("e");
}

%>