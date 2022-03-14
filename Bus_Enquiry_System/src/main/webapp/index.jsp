<%@page import ="sign_model.ConnectionProvider"%>
<%@page import ="java.sql.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>complete responsive tour and travel agency website design tutorial</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css1/style.css">
    <link rel="stylesheet" href="css1/review.css">

</head>
<body>
    
<!-- header section starts  -->

<header>

    <div id="menu-bar" class="fas fa-bars"></div>

    <a href="#" class="logo"><span>T</span>ravel with <span>T</span>ransport</a>

    <nav class="navbar">
        <a href="#home">home</a>
        <a href="Book.html">book</a>
        <a href="#places">places</a>
        <a href="#services">services</a>
        <a href="#review">review</a>
        <a href="#contact">contact</a>
    </nav>

    <div class="icons">
        <div class="dropdown">
            <button class="dropbtn">Account</button>
            <div class="dropdown-content">
                <a href="login.jsp">User Login</a>
                <a href="login.jsp">Admin Login</a>
            </div>
        </div>
    </div>

</header>

<!-- header section ends -->



<!-- home section starts  -->

<section class="home" id="home">

    <div class="content">
        <h3>travelling is worthwhile</h3>
        <p>discover new places with us, adventure awaits</p>
    </div>

    <div class="searchContainer"> 
        
        <form action="searchHome.jsp" method="post">

            <a href="home.jsp" class="btn">search</a>
        </form>
    
    </div>

    <div class="video-container">
        <video src="images/vid-6.mp4" id="video-slider" loop autoplay muted></video>
    </div>

</section>

<!-- home section ends -->


<!-- places section starts  -->

<section class="places" id="places">

    <h1 class="heading">
        <span>p</span>
        <span>l</span>
        <span>a</span>
        <span>c</span>
        <span>e</span>
        <span>s</span>
    </h1>

    <div class="box-container">

        <div class="box">
            <img src="images/Pic1.jpg" alt="">
            <div class="content">
                <h3> <i class="fas fa-map-marker-alt"></i> dhaka city </h3>
                <p>Dhaka,located just north of the Buriganga River,is the capital of Bangladesh.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <br>
                <a href="#" class="btn">search transport</a>
            </div>
        </div>

        <div class="box">
            <img src="images/Pic2.jpg" alt="">
            <div class="content">
                <h3> <i class="fas fa-map-marker-alt"></i> bandarban </h3>
                <p>The three highest peaks of Bangladesh Tahjindong, Mowdok Mual, and Keokradong 
                    are located in Bandarban district.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                
                <a href="#" class="btn">search transport</a>
            </div>
        </div>

        <div class="box">
            <img src="images/Pic3.jpg" alt="">
            <div class="content">
                <h3> <i class="fas fa-map-marker-alt"></i> Cox's Bazar </h3>
                <p>Cox'bazar is the longest sea beach in the world.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <br>
                <a href="#" class="btn">search transport</a>
            </div>
        </div>

        <div class="box">
            <img src="images/Pic4.jpg" alt="">
            <div class="content">
                <h3> <i class="fas fa-map-marker-alt"></i> rangamati </h3>
                <p>Rangamati is located in the Chittagong Division having 
                    international borders with two countries:India and Myanmar. Kaptai lake is situated here.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                
                <a href="#" class="btn">search transport</a>
            </div>
        </div>

        <div class="box">
            <img src="images/Pic5.jpg" alt="">
            <div class="content">
                <h3> <i class="fas fa-map-marker-alt"></i> sajek </h3>
                <p>Sajek is a union located in the north of Chittagong Hill Tracts.
                    It's under Baghaichori Upazila in Rangamati hill district</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <br>
                <a href="#" class="btn">search transport</a>
            </div>
        </div>

        <div class="box">
            <img src="images/Pic6.jpg" alt="">
            <div class="content">
                <h3> <i class="fas fa-map-marker-alt"></i> shundarban </h3>
                <p>Sundarbans is a mangrove area in the delta formed by the confluence of the Padma, Brahmaputra and Meghna Rivers in the Bay of Bengal. 
                    It is situated in Khulna. </p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                
                <a href="#" class="btn">search transport</a>
            </div>
        </div>

        <div class="box">
            <img src="images/Pic7.jpg" alt="">
            <div class="content">
                <h3> <i class="fas fa-map-marker-alt"></i> sylhet </h3>
                <p>Sylhet,a metropolitan city in northeastern Bangladesh, is famouse for biggest tea garden.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                <br>
                <a href="#" class="btn">search transport</a>
            </div>
        </div>

        <div class="box">
            <img src="images/Pic8.jpg" alt="">
            <div class="content">
                <h3> <i class="fas fa-map-marker-alt"></i> Paharpur </h3>
                <p>Paharpur,an important archaeological site in Bangladesh, situated in paharpur village under the Badalgachhi Upazila of Naogaon district</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                
                <a href="#" class="btn">search transport</a>
            </div>
        </div>

        <div class="box">
            <img src="images/Pic9.jpg" alt="">
            <div class="content">
                <h3> <i class="fas fa-map-marker-alt"></i> kuakata </h3>
                <p>Kuakata, known as somudro-Konna, is situated in Patuakhali District. From this place, both sun sets & sun rises can be seen
                     with the fresh air of bay of bengal.</p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                </div>
                
                <a href="#" class="btn">search transport</a>
            </div>
        </div>

    </div>

</section>

<!-- places section ends -->


<!-- services section starts  -->

<section class="services" id="services">

    <h1 class="heading">
        <span>s</span>
        <span>e</span>
        <span>r</span>
        <span>v</span>
        <span>i</span>
        <span>c</span>
        <span>e</span>
        <span>s</span>
    </h1>

    <div class="box-container">

        <div class="box">
            <i class="fas fa-bullhorn"></i>
            <h3>safty guide</h3>
            <p>Your safety is our personal responsibility.Always follow the correct routes.
                Never take shortcuts.</p>
        </div>
        <div class="box">
            <i class="fas fa-globe-asia"></i>
            <h3>around the country</h3>
            <p>Bangladesh's tourist attractions include historical monuments, resorts, beaches, picnic spots,
                 forests and tribal people, wildlife of various species located in various places.</p>
        </div>
        <div class="box">
            <i class="fas fa-bus"></i>
            <h3>fastest travel</h3>
            <p>Our motive is to travel one place to another in a very lesser time duration maintaining the 
                time schedule & speed.
            </p>
        </div>
        <div class="box">
            <i class="fas fa-hiking"></i>
            <h3>adventures</h3>
            <p>Activities for tourists include angling,water skiing, river cruising, hiking, rowing, yachting, and sea bathing.</p>
        </div>

    </div>

</section>

<!-- services section ends -->

<!-- review section starts  -->

<section class="miran" id="review">
    <div>
        <h1 class="heading">
            <span>r</span>
            <span>e</span>
            <span>v</span>
            <span>i</span>
            <span>e</span>
            <span>w</span>
        </h1>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="card">
                    <div class="face front-face"> <img
                            src="https://scontent.fcgp17-1.fna.fbcdn.net/v/t39.30808-6/266689100_6586900721381525_2373012568240820376_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFdaIGXd3dOGrR3lL4HyFfK0K3PoI8ixK3Qrc-gjyLErQkjHGi0oBfqRpStfooJcWS4rP1vb6WP9LzYrfBymJc_&_nc_ohc=7EMusKsy7z4AX-aQqJv&_nc_ht=scontent.fcgp17-1.fna&oh=00_AT_NZIev9rqsF9gwu2pp73c80SfYqT6M6u-pO6jzEZf7mw&oe=6233BC93"
                            alt="" class="profile"><b>
                            <div class="pt-3 text-uppercase name">
                                <h2>Manan Binth Taj Noor</h2>
                            </div>
                            <div class="designation">
                                <h3 align="center">Teacher</h3>
                            </div>
                    </div>
                    <div class="face back-face"> <span class="fas fa-quote-left"></span>
                        <div class="testimonial">
                            <p>
                                <font size="2">Nice and very helpful app. 1. Bug: every time I try for bKash
                                    transaction id verification, it says invalid contact number and fails. It
                                    happens if contact number starts with "013" but ok with other numbers. Please
                                    fix this bug.
                                </font>
                            </p>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>
                        </div> <span class="fas fa-quote-right"></span>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card">
                    <div class="face front-face"> <img
                            src="https://scontent.fcgp17-1.fna.fbcdn.net/v/t1.6435-9/57703290_130118061491196_3677485783498883072_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=174925&_nc_eui2=AeGyLXmMxtSVk4FRBkgukoklykG2TOLJ8inKQbZM4snyKdbKNoWm92WzZ5DOln_C8LLcZ7seNBlEUh0DDLIGsrFj&_nc_ohc=kIYSsxqLb4sAX9heiik&tn=hS5UKxAZ5IohtoW8&_nc_ht=scontent.fcgp17-1.fna&oh=00_AT-e1-LOlF9MPqy4rpv2RA0dpxl5bxbhEB6ffCPv4DPy7A&oe=6253A390"
                            alt="" class="profile">
                        <div class="pt-3 text-uppercase name">
                            <h2>M. Shamim Kaiser</h2>
                        </div>
                        <div class="designation">
                            <h3>IT Director</h3>
                        </div>
                    </div>
                    <div class="face back-face"> <span class="fas fa-quote-left"></span>
                        <div class="testimonial">
                            <p>
                                <font size="2">Very good service.attempted minimum 20 times to buy my bus ticket but
                                    their did not provide to select location.notging to use like app. need to be
                                    more professional. Robi axiata seems they made their app and in a sleep mood
                                    now! Really much disappointed!
                                </font>
                            </p>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>
                        </div> <span class="fas fa-quote-right"></span>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card">
                    <div class="face front-face">
                        <img src="https://scontent.fcgp17-1.fna.fbcdn.net/v/t31.18172-8/15369020_1351247964888306_4346816059703380191_o.jpg?_nc_cat=103&ccb=1-5&_nc_sid=174925&_nc_eui2=AeEwJflt1-bSIr7_AM3NXxrj5DsHVF358ankOwdUXfnxqaNRFanr0zPTMAqU93xAMEJZhTl3-XogBlpM5VbF1QWH&_nc_ohc=oMsbnSm6oSgAX8-tlhC&_nc_ht=scontent.fcgp17-1.fna&oh=00_AT-4IqPKG-qTSseZi2JPuvz5leE9ITQbBZFxIvzCdNa5KA&oe=6252488F"
                            alt="" class="profile">
                        <div class="pt-3 text-uppercase name">
                            <h2>Mehrin Anannya</h2>
                        </div>
                        <div class="designation">
                            <h3>Teacher</h3>
                        </div>
                    </div>
                    <div class="face back-face"> <span class="fas fa-quote-left"></span>
                        <div class="testimonial">
                            <p>
                                <font size="2">Very good app. They stand by their policy of ticket
                                    cancellation,return and other things. So a very good user experience over all.
                                    Very friendly app.
                                </font>
                            </p>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                            </div> </b>
                        </div> <span class="fas fa-quote-right"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>

<!-- review section ends -->


<!-- contact section starts  -->

<section class="contact" id="contact">
    
    <h1 class="heading">
        <span>c</span>
        <span>o</span>
        <span>n</span>
        <span>t</span>
        <span>a</span>
        <span>c</span>
        <span>t</span>
    </h1>

    <div class="row">

        <div class="image">
            <img src="images/Bus.jpg" alt="">
        </div>

        <form action="">
            <div class="inputBox">
                <input type="text" placeholder="name">
                <input type="email" placeholder="email">
            </div>
            <div class="inputBox">
                <input type="number" placeholder="number">
                <input type="text" placeholder="subject">
            </div>
            <textarea placeholder="message" name="" id="" cols="30" rows="10"></textarea>
            <input type="submit" class="btn" value="send message">
        </form>

    </div>
    
</section>

<!-- contact section ends -->


<!-- brand section  -->
<section class="brand-container">

    <div class="swiper-container brand-slider">
        <h1 id="abcd">We Accept</h1>
        <br>
        <div><img src="https://bdtickets.com/images/client-logo-new.png" alt=""></div>
    </div>
</section>

<!-- footer section  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>about us</h3>
            <p>Travel ticket is a premium online booking portal which allows you to purchase tickets for various
                 bus services across the country.</p>
        </div>
        <div class="box">
            <h3>head-quarter</h3>
            <p>Jahangirnagar University</p>
            <a href="https://www.google.com/maps/place/Institute+of+Information+Technology(IIT)/@23.88146,90.2698459,15z/data=!4m5!3m4!1s0x0:0x8c0c3266902845a0!8m2!3d23.8814488!4d90.2700759" target="#">Map</a>
        </div>
        <div class="box">
            <h3>quick links</h3>
            <a href="#home">home</a>
            <a href="Book.html">book</a>
            <a href="#places">places</a>
            <a href="#services">services</a>
            <a href="#review">review</a>
            <a href="#contact">contact</a>
        </div>
        <div class="box">
            <h3>follow us</h3>
            <a href="#">facebook</a>
            <a href="#">instagram</a>
            <a href="#">twitter</a>
            <a href="#">linkedin</a>
        </div>

    </div>

    <h1 class="credit"> created by <span class="typing"> </span> | all rights reserved! </h1>

</section>

 
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="js/script.js"></script>

</body>
</html>