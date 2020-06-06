<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonateBlood.aspx.cs" Inherits="Serving_Hands.DonateBlood" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:gray">
    <form id="form1" runat="server">
        <div>
             <h2 style="color: rgb(96,188,15);">Donate Blood</h2>
            Blood Group : <asp:DropDownList ID="DropDownList1" runat="server">
                  <asp:ListItem>A+</asp:ListItem>
                  <asp:ListItem>A-</asp:ListItem>
                  <asp:ListItem>B+</asp:ListItem>
                  <asp:ListItem>B-</asp:ListItem>
                  <asp:ListItem>O+</asp:ListItem>
                  <asp:ListItem>O-</asp:ListItem>
                  <asp:ListItem></asp:ListItem>
              </asp:DropDownList><br />
              Organization : <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList><br />
              Date Of Donation : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
              <asp:Button ID="Button1" runat="server" Text="Donate" OnClick="Button1_Click"/>
              <asp:Button ID="Button2" runat="server" Text="Print Slip" OnClick="Button2_Click"/>
        </div>
    </form>
</body>
</html>
