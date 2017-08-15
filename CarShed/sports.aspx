<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sports.aspx.cs" Inherits="CarShed.sports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal"
            RepeatColumns="2" BackColor="White" BorderColor="#E7E7FF" 
    BorderStyle="None" BorderWidth="1px" CellPadding="5" GridLines="Horizontal" 
        Width="1196px">
        <ItemTemplate>
        <asp:Label ID="labelcid" runat="server" Text='<%# Eval("cid") %>' Visible="false" />
            
            <asp:Image ID="piconel" runat="server" ImageUrl='<%# Eval("picone") %>'
            Height="250px"
                    Width="320px" />
            <br />
            
            <asp:Label ID="cmakerLabel" runat="server" Text='<%# Eval("cmaker") %>' />
            <br />
            
            <asp:Label ID="cnameLabel" runat="server" Text='<%# Eval("cname") %>' />
            <br />
            <a href="details.aspx?cid=<%# Eval("cid")%>">
            <asp:Image ID="info" runat="server" ImageUrl="~/info.jpg" Height="30px" Width="75px" /></a>
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:sqlcon %>" 
        SelectCommand="SELECT [cid], [picone], [cmaker], [cname] FROM [cardetails] WHERE catagory='sports'">
    </asp:SqlDataSource>
</asp:Content>
