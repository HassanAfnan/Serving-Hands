<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dowry.aspx.cs" Inherits="Serving_Hands.Dowry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:gray">
    <form id="form1" runat="server">
        <div>
             <h2 style="color: rgb(96,188,15);">Dowery Details</h2>
             Select id for delete or update<asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList><br />
             Furniture<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
             Appliances<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
             Crockeries<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
             Organization<asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList><br />
             Date<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click"/>
            <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click"/>
            <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click"/>
            <asp:Button ID="Button4" runat="server" Text="Search" OnClick="Button4_Click"/>
        </div>
    </form>
</body>
</html>
