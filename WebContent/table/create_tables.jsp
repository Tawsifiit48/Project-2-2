<%@page import = "Project.ConnectionProvider"%>
<%@page import = "java.sql.*"%>

<%
try {
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	String q1 = "create table users(email varchar(100)primary key, password varchar(100), password2 varchar(100))";
	String q2 = "create table buslist(id int, busname varchar(30),departure varchar(40), arrival varchar(40), dateOf varchar(20),price varchar(20), seats int )";
	String q3 = "create table cart(email varchar(100),bus_id int,quantity int, price int, total int, phone varchar(13))";
	System.out.println(q1);
	System.out.println(q2);
	System.out.println(q3);
	//st.execute(q1);
	//st.execute(q2);
	st.execute(q3);
	
	System.out.print("Table created");
	con.close();
}
catch(Exception e) {
	System.out.println("e");
}

%>