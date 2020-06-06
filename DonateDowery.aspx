<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonateDowery.aspx.cs" Inherits="Serving_Hands.DonateDowery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:gray">
    <form id="form1" runat="server">
        <div>
             <h2 style="color: rgb(96,188,15);">Donate Dowery</h2>
             Furniture<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
             Appliances<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
             Crockeries<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
             Organization<asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList><br />
             Date<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Donate" OnClick="Button1_Click"/>
            <asp:Button ID="Button2" runat="server" Text="Print" OnClick="Button2_Click"/>
        </div>
    </form>
</body>
</html>
