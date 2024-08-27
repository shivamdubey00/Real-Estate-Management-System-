<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="Soucre_public_ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        body{
              background-image: url('https://img.freepik.com/free-vector/realistic-style-technology-particle-background_23-2148426704.jpg'); /* Only one image is applied */
              background-size: 100%;
              height:100%;
        }
        h1{
            font-family:  Bahnschrift;
            color:white;
        }
        #label1{

            font-family:  Bahnschrift;
            font-size:22px;
        }
        #emailid{
            border-radius:9px;
            height:35px;
            font-size:24px;
            padding-left:15px;
        }
        #submit{

            border-radius:9px;
            background-color: chartreuse;
            height:40px;
            width:120px;
            border:none;
            font-family: Bahnschrift;
            font-size:11px;
        }
        .div-class{
            
            background-color:white;
            width:350px;
            height:400px;
            border-radius:12px;
        }
        #lblMessage1{
            color:red;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <center>
        <h1>Get Your Password on Email</h1>
            <div class="div-class">
        <img src="https://static.vecteezy.com/system/resources/previews/005/893/747/non_2x/change-password-icon-password-reset-icon-circular-arrow-lock-reload-concept-update-password-pictogram-illustration-vector.jpg" height="150px" width="150px" />
        <br /><br />
        <label id="label1">Enter Your Mail Id </label>
        <br /><br />
        <asp:TextBox ID="emailid" runat="server" Placeholder="Enter your text here"></asp:TextBox>
        <br />
        <br />
       
        <asp:Button ID="submit" runat="server" Text="Get Password" Onclick="btn_click"/>
                <br />
                <asp:Label ID="lblMessage1" runat="server" ForeColor="Red"></asp:Label>
            </center>
        </div>
          
    </form>
</body>
</html>
