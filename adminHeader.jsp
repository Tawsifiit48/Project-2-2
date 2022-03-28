<%@page import ="sign_model.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<link rel="stylesheet" href="../css/bcss/bootstrap.min.css">
    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="../css1/style.css">


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
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
.pa{
padding-left: 370px;

}
.pr{
padding right: 30px;
}
.pall{
padding: 20px;
}

</style>
</head>
<body>

 

    <!--Header-->
   

 
   <% String email=session.getAttribute("email").toString(); %>
    
   
            <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #333333;">
    
     <h2 class="back p" style="font-size:40px;">Transport Enquiry System</h2><br>
      </nav>
           <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #333333; padding-top:3px; padding-bottom:35px; ">
         
            <a href="addNewProduct.jsp" class="back pa pr">Add New Bus <i class='fas fa-plus-square'></i></a>&nbsp&nbsp&nbsp&nbsp
            <a href="allProductEditProduct.jsp" class="back pr">View & Edit <i class='fab fa-elementor'></i></a>&nbsp&nbsp
            <a href="messagesReceived.jsp" class="back pr">Messages <i class='fas fa-comment-alt'></i></a>&nbsp&nbsp&nbsp&nbsp
            <a href="ordersReceived.jsp" class="back pr">Bookings<i class="fas fa-archive"></i></a>&nbsp&nbsp&nbsp&nbsp
            
            <a href="../login.jsp" class="back pr">Logout <i class='fas fa-share-square'></i></a>&nbsp&nbsp&nbsp&nbsp
          
          </nav>
           <br>
           <!--table-->
           <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="../js/script.js"></script>



