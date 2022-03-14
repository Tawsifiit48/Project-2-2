<%@page import = "Project.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="../css1/style.css">
    <link rel="stylesheet" href="../css/home-style.css">

<!--  --><link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
<header>

        <div id="menu-bar" class="fas fa-bars"></div>

        <a href="#" class="logo"><span>T</span>ravel</a>

        <nav class="navbar">
            <a href="#home">home</a>
            <a href="#book">book</a>
            <a href="#packages">packages</a>
            <a href="#services">services</a>
            <a href="#gallery">gallery</a>
            <a href="#review">review</a>
            <a href="#contact">contact</a>
        </nav>

        <div class="icons">
            <i class="fas fa-search" id="search-btn"></i>
            <div class="dropdown">
                <button class="dropbtn">Account</button>
                <div class="dropdown-content">
                    <a href="login.html">User Login</a>
                    <a href="adminlog.html">Admin Login</a>
                </div>
            </div>
        </div>

        <form action="" class="search-bar-container">
            <input type="search" id="search-bar" placeholder="search here...">
            <label for="search-bar" class="fas fa-search"></label>
        </form>

    </header>


    <!--Header-->
    <br>
    <br>
     <br>
    <br>
     <br>
    <br>
     <br>
    <br>
    
    <div class="topnav sticky">
 
   
    
   
            <center><h2>Transport Enquiry System</h2></center>
            <a href="addNewProduct.jsp">Add New Bus <i class='fas fa-plus-square'></i></a>
            <a href="allProductEditProduct.jsp">All Products & Edit Products <i class='fab fa-elementor'></i></a>
            <a href="">Messages Received <i class='fas fa-comment-alt'></i></a>
            <a href="">Orders Received <i class="fas fa-archive"></i></a>
            <a href="">Cancel Orders <i class='fas fa-window-close'></i></a>
            <a href="">Delivered Orders <i class='fas fa-dolly'></i></a>
            <a href="">Logout <i class='fas fa-share-square'></i></a>
          </div>
           <br>
           <!--table-->
           <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="../js/script.js"></script>



