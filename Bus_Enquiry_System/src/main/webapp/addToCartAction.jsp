
<%@page import ="sign_model.ConnectionProvider"%>
<%@page import ="java.sql.*"%>

<%
String email=session.getAttribute("email").toString();
String bus_id = request.getParameter("id");
int  quantity = 1;
int price=0;
int tic_total=0;
int cart_total=0;

int z=0;
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs=st.executeQuery("select * from buslist where id="+bus_id+"");
   while(rs.next()){
	   price=rs.getInt(4);
	   tic_total =price;
	   
   }
   ResultSet rs1=st.executeQuery("select * from cart where bus_id="+bus_id+" and email='"+email+"'");
   while(rs1.next()){
	  cart_total=rs1.getInt(5);
	  cart_total=cart_total+tic_total;
	  quantity=rs1.getInt(3);
	  quantity=quantity+1;
	  z=1;
	  
	   
   }
   if(z==1){
	   st.executeUpdate("update cart set total ='"+cart_total+"',quantity='"+quantity+"'where bus_id="+bus_id+" and email='"+email+"'");
	   response.sendRedirect("home.jsp?msg=exists");
	   
   }
   if(z==0){
	   PreparedStatement ps= con.prepareStatement("insert into cart(email,bus_id,quantity,price,total) values(?,?,?,?,?)");
	   ps.setString(1,email);
	   ps.setString(2,bus_id);
	   ps.setInt(3,quantity);
	   ps.setInt(4,price);
	   ps.setInt(5,tic_total);
	   ps.executeUpdate();
	   response.sendRedirect("home.jsp?msg=added");
	   
   }
}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("home.jsp?msg=invalid");
}
%>