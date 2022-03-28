<%@page import ="Project.ConnectionProvider"%>
<%@page import ="java.sql.*"%>


<%
String email=session.getAttribute("email").toString();
String bus_id = request.getParameter("id");
String incdec = request.getParameter("quantity");

System.out.println(incdec);
int price = 0;
int total = 0;
int quantity = 0;
int final_total = 0;
int tot_seat = 0;

try {
	
	Connection con= ConnectionProvider.getCon();
	Statement st= con.createStatement();
	ResultSet rs = st.executeQuery("select * from cart where email = '"+email+"' and bus_id = '"+bus_id+"'");
	Connection conn = ConnectionProvider.getCon();
	Statement st2 = conn.createStatement();
	ResultSet rs2 = st2.executeQuery("select seats from buslist where id = '"+bus_id+"'");
	if(rs2.next()) {
		tot_seat = rs2.getInt(1);	
	}
	System.out.println(tot_seat);
	
	while(rs.next()) {
		price = rs.getInt(4);
		total = rs.getInt(5);
		quantity = rs.getInt(3);
		
	}
	if(quantity==1 && incdec.equals("dec")) {
		response.sendRedirect("myCart.jsp?msg=notPossible");
	} else if(quantity != 1 && incdec.equals("dec")) {
		total = total - price;
		quantity = quantity - 1;
		tot_seat = tot_seat + 1;
		st.execute("update cart set total = '"+total+"', quantity = '"+quantity+"' where email = '"+email+"' and bus_id = '"+bus_id+"'");
		st2.execute("update buslist set seats = '"+tot_seat+"' where id = '"+bus_id+"'");
		response.sendRedirect("myCart.jsp?msg=dec");
	} else if(tot_seat == 0) {
		st2.execute("update buslist set seats = '"+tot_seat+"' where id = '"+bus_id+"'");
		response.sendRedirect("myCart.jsp?msg=full");
	} else {
		total = total + price;
		quantity = quantity + 1;
		tot_seat = tot_seat - 1;
		st2.execute("update buslist set seats = '"+tot_seat+"' where id = '"+bus_id+"'");
		st.execute("update cart set total = '"+total+"', quantity = '"+quantity+"' where email = '"+email+"' and bus_id = '"+bus_id+"'");
		response.sendRedirect("myCart.jsp?msg=inc");
	}
	
}
catch(Exception e) {
	System.out.println("Exception found in incdec");
	System.out.println(e);
}

%>