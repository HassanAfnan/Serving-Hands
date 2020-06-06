<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userview.aspx.cs" Inherits="Serving_Hands.userview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:gray">
    <form id="form1" runat="server">
        <h2 style="color: rgb(96,188,15);">Donations Details</h2>
        <b>Blood Details:</b>
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="bid" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="102px" Width="262px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="bid" HeaderText="bid" InsertVisible="False" ReadOnly="True" SortExpression="bid" />
                    <asp:BoundField DataField="bloodgroup" HeaderText="bloodgroup" SortExpression="bloodgroup" />
                    <asp:BoundField DataField="organization" HeaderText="organization" SortExpression="organization" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ServingHandsConnectionString %>" SelectCommand="SELECT [bid], [bloodgroup], [organization], [date] FROM [blood]"></asp:SqlDataSource>
            <br />
        </div>
        <b>Clothes Details:</b>
        <div>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="cid" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None" Height="81px" Width="226px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="cid" HeaderText="cid" InsertVisible="False" ReadOnly="True" SortExpression="cid" />
                    <asp:BoundField DataField="noclothes" HeaderText="noclothes" SortExpression="noclothes" />
                    <asp:BoundField DataField="organization" HeaderText="organization" SortExpression="organization" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ServingHandsConnectionString2 %>" SelectCommand="SELECT [cid], [noclothes], [organization], [date] FROM [clothes]"></asp:SqlDataSource>
            <br />
        </div>
        <b>Dowery Details:</b>
        <div>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="did" DataSourceID="SqlDataSource3" CellPadding="4" ForeColor="#333333" GridLines="None" Height="85px" Width="426px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="did" HeaderText="did" InsertVisible="False" ReadOnly="True" SortExpression="did" />
                    <asp:BoundField DataField="furniture" HeaderText="furniture" SortExpression="furniture" />
                    <asp:BoundField DataField="appliances" HeaderText="appliances" SortExpression="appliances" />
                    <asp:BoundField DataField="crockeries" HeaderText="crockeries" SortExpression="crockeries" />
                    <asp:BoundField DataField="organization" HeaderText="organization" SortExpression="organization" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ServingHandsConnectionString3 %>" SelectCommand="SELECT [did], [furniture], [appliances], [crockeries], [organization], [date] FROM [Drowsy]"></asp:SqlDataSource>
            <br />
        </div>
        <b>Money Details:</b>
        <div>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="mid" DataSourceID="SqlDataSource4" CellPadding="4" ForeColor="#333333" GridLines="None" Height="55px" Width="252px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="mid" HeaderText="mid" InsertVisible="False" ReadOnly="True" SortExpression="mid" />
                    <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                    <asp:BoundField DataField="organization" HeaderText="organization" SortExpression="organization" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ServingHandsConnectionString4 %>" SelectCommand="SELECT [mid], [amount], [organization], [date] FROM [money]"></asp:SqlDataSource>
            <br />
        </div>
        <b>Organization Details:</b>
        <div>
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="oid" DataSourceID="SqlDataSource5" CellPadding="4" ForeColor="#333333" GridLines="None" Height="16px" Width="263px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="oid" HeaderText="oid" InsertVisible="False" ReadOnly="True" SortExpression="oid" />
                    <asp:BoundField DataField="nameOrganization" HeaderText="nameOrganization" SortExpression="nameOrganization" />
                    <asp:BoundField DataField="requirement" HeaderText="requirement" SortExpression="requirement" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ServingHandsConnectionString5 %>" SelectCommand="SELECT [oid], [nameOrganization], [requirement] FROM [Organization]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
