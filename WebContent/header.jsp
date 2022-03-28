<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bcss/bootstrap.min.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/9cf14037e4.js" crossorigin="anonymous"></script>

<style> 

.back{
background-color:#333333;
color:white;
font-size:27px;
}
.back:hover{
color:#ffa500;
}
.p{
padding-left:550px;


}
.pall{
padding: 20px;
}

</style>

<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
     <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #333333;">
    
     <h2 class="back p" style="font-size:40px;">Transport Enquiry System</h2>
      </nav>
    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #333333;">
   
    
    <%String email = session.getAttribute("email").toString(); %>
          
            <h2><a href="" style="color: white;" > <%out.println(email); %><i class='fas fa-user-alt'></i></a></h2> &nbsp&nbsp
            
            <a href="home.jsp" class="back">Buslist<i class="fa-solid fa-bus"></i></a>&nbsp&nbsp
             <a href="home2.jsp" class="back">Trainlist<i class="fa-solid fa-train-subway"></i></a>&nbsp&nbsp&nbsp&nbsp
              <a href="home3.jsp" class="back">Launchlist<i class="fa-solid fa-ship"></i></a>&nbsp&nbsp&nbsp&nbsp
            <a href="myCart.jsp"  class="back">My Cart<i class='fas fa-cart-arrow-down'></i></a>&nbsp&nbsp&nbsp&nbsp
            <a href="myOrders.jsp"  class="back">My Bookings  <i class='fab fa-elementor'></i></a>&nbsp&nbsp&nbsp&nbsp
            
            <a href="messageUs.jsp"  class="back">Message Us <i class='fas fa-comment-alt'></i></a>&nbsp&nbsp&nbsp&nbsp
            <a href="about.jsp"  class="back">About <i class="fa fa-address-book"></i></a>&nbsp&nbsp&nbsp&nbsp
            <a href="logout.jsp"  class="back">Logout <i class='fas fa-share-square'></i></a>&nbsp&nbsp&nbsp&nbsp
             </nav> 
     
        <div>
   
   
          
           <!--table-->
