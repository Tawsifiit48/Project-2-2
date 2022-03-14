<%@include file="adminHeader.jsp" %>
 <%--  <%@include file="..//footer.jsp" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <title>welcome to admin</title>

  <style>
    img {

      z-index: -4;
    }

    h1 {
      color: white;
      text-align: center;
      font-size: 100px;
    }
  </style>
  <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

  <!-- font awesome cdn link  -->
  <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"> -->

  <!-- custom css file link  -->
  <link rel="stylesheet" href="css3/style.css">
</head>

<body>
  <header>

    <div id="menu-bar" class="fas fa-bars"></div>

    <a href="#" class="logo"><span>T</span>ravel with <span>T</span>ransport</a>

    <nav class="navbar">
      <a href="addNewProduct.jsp">Add New Bus</a>
      <a href="allProductEditProduct.jsp">View & Edit</a>
      <a href="messagesReceived.jsp">Message</a>
      <a href="ordersReceived.jsp">Bookings</a>
    </nav>

    <div class="dropdown">
      <a href="../index.jsp">
        <button class="dropbtn">Logout</button>
      </a>
    </div>

  </header>
  
  
  
  <section class="home" id="home">
    <div class="center">
      <h1 class="awesome">
        welcome to Admin
      </h1>
    </div>
    <div class="video-container">
      <video src="images2/vid-6.mp4" id="video-slider" loop autoplay muted></video>
    </div>


  </section>
</body>

</html>