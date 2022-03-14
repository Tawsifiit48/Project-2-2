
<%@page import ="sign_model.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%
try {
	Connection con=ConnectionProvider.getCon();
	Statement st = con.createStatement() ;
	String q1= "create table user1( name varchar(30), phone varchar(13), email varchar(30) primary key, password varchar(30))";
	String q2 = "create table buslist(id int, busname varchar(30),departure varchar(40), arrival varchar(40), price varchar(20),date varchar(20), seats int )";
	String q3= "create table cart(email varchar(100),bus_id int,quantity int, price varchar(20), total int,phone varchar(13))";
	System.out.println(q1);
	System.out.println(q2);
	System.out.println(q3);
	//st.execute(q1);
	st.execute(q2);
	System.out.println("table created");
	con.close();
	
}
catch(Exception e){
	System.out.print(e);
}
%>

