<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="_Default" %>
<%@ Register Src="imageslider.ascx" TagName="imageslider" TagPrefix="uc1" %>



<!-- Project : Real Estate Management System -->
<!-- By : Shivam Dubey , Prem Vishwakarma -->
<!-- Last Updated : 22/08/2024 -->
<!DOCTYPE html>
<!-- Home Page -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Real Estate</title>
    <style>
        html{
            text-size-adjust: 100%;
        }
        .navbar{
                       position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-color: black;
            display: flex;
            align-items: center;
            height: 68px;
            z-index: 1000;
            top: 10;
transition: all .8s ease; 
        }
        #img-nav {
            padding-left:5px;

        }
      
        #nav-ul{
            margin-left:340px;
             list-style-type:none;
             
             
         }
        .nav-li{

            display:inline;
            padding:10px;
            font-family: Verdana;
            font-size:16px;
            height:100%;
            border-radius:15px;
        }
        .nav-li a{
            color:white;
            text-decoration:none;
        }
        .nav-li a:hover{
            color:black;
        }
        .nav-li:hover{
            color:black;
            background-color: white;
         
            

             
        }
        
        #nav-h3{
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            color: whitesmoke;
        }
        #nav-login-btn{
            padding:10px;
             border-radius:16px;
             font-size:16px;
             height:40px;
             width:85px;
             font-family: Calibri;
             font-size:18px;
        }
        #nav-login-btn:hover{
             color:black;
             background-color:rgb(149, 255, 0);
             

        }

        #nav-signup-btn{

            border-radius:16px;
            font-size:16px;
            height:40px;
            width:85px;
            font-family: Calibri;
            font-size:18px;

        }
        #nav-signup-btn:hover{
            color:white;
            background-color:rgb(157, 22, 184);
            
        }
        #nav-div-btn1{
            padding-left:25px;
        }
        #nav-div-btn2{
            padding:5px;
        }



        /* All Code Starting for Here is for Footer Beautification */


        /*Let Start Footer */

        .home-footer{
                background-color:#151C22;
                border-radius:15px;
                 z-index: 1000;

        }
        #footer-nav{
                border-radius: 12px;
                display: flex;
                align-items: center; /* Vertically align items */
        }

        .footer-div-1{
            padding-top:10px;
                display: flex;
                align-items: center; /* Vertically align items */


        }
        #footer-div-1 img{

                padding:20px;
        }

        #footer-nav ul li{
                 
            list-style-type:none;
            font-family: 'MS Reference Sans Serif';
            font-size:16px;
            color:white;
        }
         #footer-nav-ul-1{
                    padding-left:280px;
                    line-height: 2.2;
                    padding-bottom:210px;
 }
          #footer-nav-ul-2{
                  padding-left:50px;
                  line-height: 2.2;
                  padding-bottom:75px;

 }
           #footer-nav-ul-3{
                    padding-left:50px;
                   line-height: 2.2;

 }
           .footer-nav-h3-1{
               
               color:white;
           }
           break{
               flex-basis: 70%;
                width: 0px; 
                height: 0px; 
                overflow: hidden;
                

           }
           #footer-nav-ul-details{
                padding-left:130px;
                 padding-bottom:150px;

           }
           #img-footer{
               padding-left:15px;
           }
           /*

               Image slider Css 
           */


.slider-container {
            position: relative;
            max-width: 100%;
            overflow: hidden;
        }
        .card-container {
            display: flex;
            transition: transform 0.3s ease-in-out;
            gap: 20px;
        }
        .property-card {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            overflow: hidden;
            width: 300px;
            flex-shrink: 0;
        }
        .property-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }
        .property-card .card-content {
            padding: 15px;
        }
        .property-card .card-content h3 {
            margin: 0 0 10px;
        }
        .property-card .card-content p {
            margin: 0 0 10px;
        }
        .arrow {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            background-color: rgba(0,0,0,0.5);
            color: #fff;
            border: none;
            padding: 10px;
            cursor: pointer;
        }
        .arrow-left {
            left: 10px;
        }
        .arrow-right {
            right: 10px;
        }
        .dots-container {
            text-align: center;
            margin-top: 10px;
        }
        .dot {
            height: 10px;
            width: 10px;
            margin: 0 5px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            cursor: pointer;
        }
        .dot.active {
            background-color: #717171;
        }
        #nnnn{

            border-radius:8px;
        }
/*

    End of Code

*/

    </style>

</head>
<body>
    <!-- Creating Navbar -->
    <nav class="navbar">
        <img id="img-nav" src="https://static.vecteezy.com/system/resources/previews/023/495/220/non_2x/real-estate-logo-design-png.png" height="84" width="85" />
        <h3 id="nav-h3">Sadhana Realty</h3>
        <ul id="nav-ul">
            <li class="nav-li"><a href="Homepage.aspx">Home</a></li>
            <li class="nav-li"><a href="Homepage.aspx">Buy</a></li>
            <li class="nav-li"><a href="Homepage.aspx">Rent</a></li>
            <li class="nav-li"><a href="Homepage.aspx">Customize Request</a></li>
            <li class="nav-li"><a href="Homepage.aspx">Sample Flats</a></li>
            <li class="nav-li"><a href="Homepage.aspx">Pre-Booking</a></li>
            <li class="nav-li"><a href="Homepage.aspx">New</a></li>
            
        </ul>
        <div id="nav-div-btn1">
            <a href="Login.aspx">
                <button role="link" id="nav-login-btn" onclick="location.href='www.google.com'">Login</button>
            </a>
        </div>
        <div id="nav-div-btn2">
            <a href="Signup.aspx">
                <button id="nav-signup-btn">Signup</button>
            </a>
        </div>
    </nav>
    <br /><br /><br />
    <marquee><h4>Sunteck MaxxWorld Pre launch 1 BHK | 2 BHK | 3 BHK  Get Exciting Gifts For Free <a href="#">Book Now </a> |                           Sunteck WestWorld Pre launch 1 BHK | 2 BHK | 3 BHK  Get Exciting Gifts For Free <a href="#">Book Now </a></h4></marquee>

    <!-- Body -->


    <!-- creating a Slider -->

                <uc1:ImageSlider ID="imageslider" runat="server" />
    <br />
    <br />
    <!-- Displying Property Slider-->

    <h2>Quick View</h2>
    <div class="slider-container">
        <button class="arrow arrow-left" onclick="moveLeft()">&#10094;</button>
        <div class="card-container" id="cardContainer">
            <asp:Repeater ID="PropertyRepeater" runat="server">
                <ItemTemplate>
                    <div class="property-card">
                        <img src='<%# Eval("ImagePath") %>' alt="Property Image" />
                        <div class="card-content">
                            <h3><%# Eval("Title") %></h3>
                            <p>Price: <%# Eval("Price") %></p>
                            <p>Size: <%# Eval("Size") %> sq ft</p>
                            <p>Location: <%# Eval("Location") %></p>
                            <p>Developer: <%# Eval("DeveloperName") %></p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <button class="arrow arrow-right" onclick="moveRight()">&#10095;</button>
    </div>
    <div class="dots-container" id="dotsContainer"></div>


    
   <br />
    <br />
    <br />
    <center>
    <a href="propertydisplay.aspx">
    <img id="nnnn" src="Images/medd.png" height="200px" width="400px" />
        </a>
        </center>
    <br />
    <br />
    <script>
        const cardContainer = document.getElementById('cardContainer');
        const totalCards = cardContainer.children.length;
        let currentSlide = 0;
        const cardsPerView = Math.floor(cardContainer.clientWidth / 320);
        
        function updateDots() {
            const dotsContainer = document.getElementById('dotsContainer');
            dotsContainer.innerHTML = '';
            const totalDots = Math.ceil(totalCards / cardsPerView);
            for (let i = 0; i < totalDots; i++) {
                const dot = document.createElement('span');
                dot.classList.add('dot');
                if (i === currentSlide) dot.classList.add('active');
                dot.setAttribute('onclick', `goToSlide(${i})`);
                dotsContainer.appendChild(dot);
            }
        }

        function moveLeft() {
            if (currentSlide > 0) {
                currentSlide--;
                updateSlider();
            }
        }

        function moveRight() {
            if (currentSlide < Math.ceil(totalCards / cardsPerView) - 1) {
                currentSlide++;
                updateSlider();
            }
        }

        function goToSlide(slideIndex) {
            currentSlide = slideIndex;
            updateSlider();
        }

        function updateSlider() {
            const slideWidth = cardContainer.children[0].offsetWidth + 20; // card width + gap
            cardContainer.style.transform = `translateX(${-currentSlide * slideWidth}px)`;
            updateDots();
        }

        // Initialize dots on page load
        window.onload = updateDots;
    </script>








    <!-- Body Ends -->



    <!-- Footer -->
   

    <footer class="home-footer">
        <div class="footer-div-1">
             <img style="padding-left:15px;" src="https://images.vexels.com/media/users/3/140527/isolated/lists/449b95d58f554656b159dd3ca21ab123-home-round-icon.png" width="80px" height="80px" />
             <h3 class="footer-nav-h3-1">Sadhana Realty</h3>
              <break></break>
            
            <img style="padding:8px;" src="https://cdn2.iconfinder.com/data/icons/social-media-applications/64/social_media_applications_3-instagram-512.png" width="40" height="40" />
            <img style="padding:8px;"src="https://cdn4.iconfinder.com/data/icons/social-media-2110/64/WhatsApp-01-512.png" width="50" height="50" />
                    <img style="padding:8px;" src="https://static.vecteezy.com/system/resources/previews/021/495/977/non_2x/facebook-social-media-logo-icon-free-png.png" width="45" height="45" />

                  </div>
        <br />
        <br />
        <nav id="footer-nav">
            <ul id="footer-nav-ul-1">
               <li> <h3 class="footer-nav-h3-1" >Quick Actions</h3></li>
                <li>Home</li>
                <li>About us</li>
                <li>Contact us </li>
                <li>Help 24/7</li>
                <li>Where We Locate</li>
                <li>Luxury Flats </li>
                <li>View Rentals Flats </li>
                <li>Where We Locate</li>
                <li>Luxury Flats </li>
                <li>View Rentals Flats </li>
                <li>Affliate Helps </li>
                
            </ul>
            <ul id="footer-nav-ul-2">
                <li><h3 class="footer-nav-h3-1" align="center">View Qucikly</h3></li>
                <li>Price as City</li>
                <li>Where We Locate</li>
                <li>Luxury Flats </li>
                <li>View Rentals Flats </li>
                <li>Where We Locate</li>
                <li>Luxury Flats </li>
                <li>View Rentals Flats </li>
                <li>Where We Locate</li>
                <li>Luxury Flats </li>
                <li>View Rentals Flats </li>
                <li>Affliate Helps </li>
                <li>Where We Locate</li>
                <li>View Rentals Flats </li>
                <li>Affliate Helps </li>
                <li>Where We Locate</li>
               
            </ul>
            <ul id="footer-nav-ul-3">
               <li><h3 class="footer-nav-h3-1">Earn Form Us</h3></li> 
                <li>Affilate Program</li>
                <li>Affliate Price breakup</li>
                <li>Affliation Category </li>
                <li>Affliate Helps </li>
                <li>Where We Locate</li>
                <li>Luxury Flats </li>
                <li>View Rentals Flats </li>
                <li>Where We Locate</li>
                <li>Luxury Flats </li>
                <li>View Rentals Flats </li>
                <li>Affliate Helps </li>
                <li>Where We Locate</li>
                <li>Luxury Flats </li>
                <li>View Rentals Flats </li>
                <li>Where We Locate</li>
                <li>Luxury Flats </li>
                <li>View Rentals Flats </li>



            </ul>
                
                
                
            <ul id="footer-nav-ul-details">
            <li><h3>Contact Us</h3> </li>
                <br />
            <li><h3>Toll Free no - 1800 1800 9000 </h3></li>
            <li><p>9:30 am to 6:30pm </p></li>
            <br /><br />
            <li>Email: Sadhanarealty@gmail.com </li>
             <br />
            <li><h3>Connect With Us </h3></li>
            <!-- add social media icon-->
                <img  id="img-footer" src="images/instagrams.png" witdh="25" height="25" />
                <img id="img-footer" src="images/whatsapps.png" witdh="25" height="25" />
                <img id="img-footer" src="images/fb.png" witdh="25" height="25" />

                <br /><br />
                
             <li><h3> Developed BY</h3></li
                <br /><br />
             <li>All trademarks are the property of their respective owners.</li>
             <li>All rights reserved - Info Edge (India) Ltd.</li>
             <li>A Abcs group venture</li>




            </ul>



        </nav>


        <br /><br /><br /><br />
        <p style="color:white; font-family:sans serif;" align="center">All Rights Reserved by @Sadhana Realty & Developed by Junior Developer </p>
        <br />
        
        </footer>

</body>
</html>
