 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Organization.aspx.cs" Inherits="Serving_Hands.Organization1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:gray">
    <form id="form1" runat="server">
        <div>
             <h2 style="color: rgb(96,188,15);">Organization details</h2>
           Select id for delete or update <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList><br />
           Name of organization:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
           Requirement:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click"/>
            <asp:Button ID="Button2" runat="server" Text="Delete" onclick="Button2_Click"/>
            <asp:Button ID="Button3" runat="server" Text="Update" onclick="Button3_Click"/>
            <asp:Button ID="Button4" runat="server" Text="Select" onclick="Button4_Click"/>
        </div>
    </form>
</body>
</html>
