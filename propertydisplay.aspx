<%@ Page Language="C#" AutoEventWireup="true" CodeFile="propertydisplay.aspx.cs" Inherits="Soucre_propertydisplay" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Properties List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-color: #f4f4f4;
        }
        .filter-section {
            margin-bottom: 20px;
            padding: 10px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .filter-section input {
            padding: 10px;
            margin-right: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .filter-section button {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .filter-section button:hover {
            background-color: #0056b3;
        }
        .card-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }
        .property-card {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            overflow: hidden;
            width: 300px;
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
 <br /><br />
 <marquee><p>Sunteck MaxxWorld Pre launch 1 BHK | 2 BHK | 3 BHK  Get Exciting Gifts For Free <a href="#">Book Now </a> |                           Sunteck WestWorld Pre launch 1 BHK | 2 BHK | 3 BHK  Get Exciting Gifts For Free <a href="#">Book Now </a></p></marquee>





    <!-- Filter Section -->
    <div class="filter-section">
        <form runat="server" >
        <asp:TextBox ID="txtLocation" runat="server" placeholder="Enter Location" CssClass="filter-input" />
        <asp:TextBox ID="txtPriceMin" runat="server" placeholder="Min Price" CssClass="filter-input" />
        <asp:TextBox ID="txtPriceMax" runat="server" placeholder="Max Price" CssClass="filter-input" />
        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="filter-btn" />
     </form>
            </div>

    <!-- Property Cards -->
    <div class="card-container">
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
</body>
</html>
