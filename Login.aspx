<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Soucre_public_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        body{

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
    </style>
</head>
<body>
    <center>
        <h2>Login Here</h2>

                            <asp:Label ID="lblMessage1" runat="server" ForeColor="Red"></asp:Label><br /><br />

    <img src="https://www.w3schools.com/howto/img_avatar2.png" height="200px" width="200px"/>
   <br />
        <br />

    <form id="form1" runat="server">
        <asp:Label ID="label1" runat="server" Text="Email Id "></asp:Label>
        <asp:TextBox ID="firstname" runat="server"></asp:TextBox>
        <br />
        <br />

        <asp:Label ID="label2" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="password" runat="server"></asp:TextBox>

        <br />
        <br />

        <asp:CheckBox ID="CheckBox1" runat="server" required="required" />
        <asp:Label ID="accept" runat="server" Text="I Accept All Terms & Conditions "></asp:Label>
        <br />
        <div class="new-class">
        
        </div>
        <br />
        

        <asp:Button ID="Button1" runat="server" Text="Login"  onclick="button1_click"/>
        <br />
        <br />
        <br />
        <a href="#">Forget Password</a>  | <a href="#">Create Account</a>
    </form>
         </center>
</body>
</html>
