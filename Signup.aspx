<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Soucre_public_Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
             background-image: url('https://i.pinimg.com/736x/c2/12/c4/c212c49427e29ad656e58990c8f58c4b.jpg'); /* Only one image is applied */
             background-size: 100%;

        }
        img{
            
            border-radius: 50%;
        }
        form1{
                background-color:black;

        }
         a{

                text-decoration:none;
        }
         #label2{

             font-family:  'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif ;
             font-size:15px;
         }
         #label1{

            font-family:  'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif ;
            font-size:15px;
         }
         #Button1{
             background-color:  blueviolet;
             border:none;
             color:white;
             border-radius:9px;
             height:35px;
             width:110px;
             
         }
         .card-div{

                    border-radius:9px;
                    background-color: white;
                    height:540px;
                    width:420px;
                    border:none;
                    font-family: Bahnschrift;
                    font-size:14px;      


         }
         h2{
             color:white;
             font-family:   'Cascadia Code';
         }
         #Button1{

             font-family:'Cascadia Code';
         }
    </style>
</head>
<body>
    <center>
        <h2>Register Now</h2>

                            <asp:Label ID="lblMessage1" runat="server" ForeColor="Red"></asp:Label><br />
<div class="card-div">
    <br />
    <br />
    <img src="https://www.w3schools.com/howto/img_avatar2.png" height="200px" width="200px"/>
   <br />
        <br />

    <form id="form1" runat="server">
        <asp:Label ID="label1" runat="server" Text="Email Id  : "></asp:Label>
        <asp:TextBox ID="firstname" runat="server" Placeholder="Enter Your Email-ID"></asp:TextBox>
        <br />
        <br /><asp:Label ID="label3" runat="server" Text="Username : "></asp:Label>
<asp:TextBox ID="TextBox1" runat="server" Placeholder="Enter Your Name "></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="label2" runat="server" Text="Password : "></asp:Label>
        <asp:TextBox ID="password" runat="server" Placeholder="Enter 8 Digit Password "></asp:TextBox>

        <br />
        <br />

        <asp:CheckBox ID="CheckBox1" runat="server" required="required" />
        <asp:Label ID="accept" runat="server" Text="I Accept All Terms & Conditions "></asp:Label>
        <br />
        <div class="new-class">
        
        </div>
        <br />
        

        <asp:Button ID="Button1" runat="server" Text="Register Now" Onclick="button1_click"/>
        <br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <a href="ForgetPassword.aspx">Forget Password</a>  | <a href="Login.aspx">Log in</a>
    </form>
    </div>
         </center>
</body>
</html>
