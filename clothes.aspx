<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="clothes.aspx.cs" Inherits="Serving_Hands.Models.clothes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>clothes</title>
</head>
<body style="background-color:gray">
    <form id="form1" runat="server">
        <div>
             <h2 style="color: rgb(96,188,15);">Clothes Details</h2>
         Select id for delete or update <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList><br />
         No of clothes :  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
         Organization : <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList> <br />
         Date :  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click"/>
            <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click"/>
            <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click"/>
            <asp:Button ID="Button4" runat="server" Text="Search" OnClick="Button4_Click"/>
        </div>
    </form>
</body>
</html>
