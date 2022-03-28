<%@page import = "Project.ConnectionProvider"%>
<%@page import = "java.sql.*"%>

<%
try {
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	String q1 = "create table users(name varchar(30), phone varchar(20), email varchar(100)primary key, password varchar(100))";
	String q2 = "create table buslist(id int, busname varchar(30),departure varchar(40), arrival varchar(40), price varchar(20),dateOf varchar(20), seats int, type varchar(10), flag int)";
	String q3 = "create table cart(email varchar(100),bus_id int,quantity int, price int, total int, transaction_id varchar(30))";
	String q4 = "create table message(id int AUTO_INCREMENT, email varchar(100), subject varchar(200), body varchar(1000), PRIMARY KEY(id))";
	System.out.println(q1);
	System.out.println(q2);
	System.out.println(q3);
	System.out.println(q4);
	//st.execute(q1);
	st.execute(q2);
	//st.execute(q3);
	//st.execute(q4);	
	System.out.print("Table created");
	con.close();
}
catch(Exception e) {
	System.out.println("e");
}

%>