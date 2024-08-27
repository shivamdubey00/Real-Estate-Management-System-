<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Soucre_public_Admin" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Submit Property</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-color: #f4f4f4;
        }
        .form-container {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            max-width: 600px;
            margin: 0 auto;
        }
        .form-container input, .form-container textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 4px;
            border: 1px solid #ddd;
        }
        .form-container button {
            padding: 10px 20px;
            background-color: #28a745;
            border: none;
            color: #fff;
            border-radius: 4px;
            cursor: pointer;
        }
        .form-container button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Submit Property</h2>
        <form id="propertyForm" runat="server">
            <asp:TextBox ID="Title" runat="server" placeholder="Title" />
            <asp:TextBox ID="Description" runat="server" TextMode="MultiLine" Rows="4" placeholder="Description" />
            <asp:TextBox ID="Price" runat="server" placeholder="Price" />
            <asp:TextBox ID="Location" runat="server" placeholder="Location" />
            <asp:TextBox ID="Size" runat="server" placeholder="Size (sq ft)" />
            <asp:TextBox ID="DeveloperName" runat="server" placeholder="Developer Name" />
            <asp:TextBox ID="ImageUrl" runat="server" placeholder="Image URL" />
            <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
        </form>
    </div>
</body>
</html>

