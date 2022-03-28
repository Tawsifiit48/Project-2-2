<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bcss/bootstrap.min.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
          
            <h2><a href="" style="color: white;" > <%out.println(email); %><i class='fas fa-user-alt'></i></a></h2> &nbsp&nbsp&nbsp&nbsp
            <a href="home.jsp"  class="back">Home<i class="fa fa-institution"></i></a>&nbsp&nbsp&nbsp&nbsp
            <a href="myCart.jsp"  class="back">My Cart<i class='fas fa-cart-arrow-down'></i></a>&nbsp&nbsp&nbsp&nbsp
            <a href="myOrders.jsp"  class="back">My Orders  <i class='fab fa-elementor'></i></a>&nbsp&nbsp&nbsp&nbsp
            
            <a href="messageUs.jsp"  class="back">Message Us <i class='fas fa-comment-alt'></i></a>&nbsp&nbsp&nbsp&nbsp
            <a href="about.jsp"  class="back">About <i class="fa fa-address-book"></i></a>&nbsp&nbsp&nbsp&nbsp
            <a href="logout.jsp"  class="back">Logout <i class='fas fa-share-square'></i></a>&nbsp&nbsp&nbsp&nbsp
             </nav> 
     
        <div>
         
           <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
           
           <!--table-->
