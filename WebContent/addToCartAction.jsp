
<%@page import ="Project.ConnectionProvider"%>
<%@page import ="java.sql.*"%>

<%

String email=session.getAttribute("email").toString();
String bus_id = request.getParameter("id");
int  quantity = 1;
int price=0;
int tic_total=0;
int cart_total=0;
int total = 0;
int z=0;
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs=st.executeQuery("select * from buslist where id="+bus_id+"");
   while(rs.next()){
	   price=rs.getInt(5);
	   tic_total =price;
	   total = rs.getInt(7);
	   
   }
   
   if(total == 0) {
	   z = 3;
   }
   
   if(z != 3) {
	   total = total - 1;
	   st.execute("update buslist set seats = '"+total+"' where id = '"+bus_id+"'");
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
	   System.out.println(6);
	   st.executeUpdate("update cart set total ='"+cart_total+"',quantity='"+quantity+"'where bus_id="+bus_id+" and email='"+email+"'");
	   response.sendRedirect("home.jsp?msg=exists");
	   
   }
   if(z==0){
	   	
   		System.out.println(5);
	   	PreparedStatement ps= con.prepareStatement("insert into cart(email,bus_id,quantity,price,total, transaction_id) values(?,?,?,?,?,?)");
	   	ps.setString(1,email);
	   	ps.setString(2,bus_id);
	   	ps.setInt(3,quantity);
	    ps.setInt(4,price);
	    ps.setInt(5,tic_total);
	    String tr = "";
     	for(int k =0 ; k < 10 ;k++)
	     {
	       String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	       String ret = "";
	        int length = chars.length();
	        for (int i = 0; i < 10; i ++){
	            ret += chars.charAt((int) (Math.random() * (length - 1)));
	        }
	        tr = ret;
		}
     	ps.setString(6, tr);
	    ps.executeUpdate();
	   
	   response.sendRedirect("home.jsp?msg=added");
	   
   }
   if(z == 3) {
	   response.sendRedirect("home.jsp?msg=full");
	   
   }
}
catch(Exception e){
	System.out.println(e);
	System.out.println("Exception found in AddtocartAction");
	response.sendRedirect("home.jsp?msg=invalid");
}
%>