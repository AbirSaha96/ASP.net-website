<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="CarShed.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table width="100%"><tr><td>
    <table width="100%"><tr><td>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1"
         RepeatDirection="Horizontal">
            <ItemTemplate>
            
                <asp:Label ID="cidLabel" runat="server" Text='<%# Eval("cid") %>'  Visible="false"/>
                <br />
                
                <asp:Image ID="picLabel" runat="server" ImageUrl='<%# Eval("pic") %>' Height="250px"
                    Width="320px"/>
                <br />
                
                <asp:Label ID="cnameLabel" runat="server" Text='<%# Eval("cname") %>' Font-Bold="true" Font-Size="Large" Font-Names="Coper Black" ForeColor="BlanchedAlmond" />
                <br />
                
                <asp:Label ID="cmakerLabel" runat="server" Text='<%# Eval("cmaker") %>' Font-Bold="true" Font-Size="Large" Font-Names="Coper Black" ForeColor="BlanchedAlmond" />
                <br />
                quantity:
                <asp:Label ID="quantityLabel" runat="server" Text='<%# Eval("quantity") %>' Font-Bold="true" Font-Size="Large" Font-Names="Coper Black" ForeColor="BlanchedAlmond" />
                <br />
                Price:
                <asp:Label ID="tpriceLabel" runat="server" Text='<%# Eval("tprice") %>' Font-Bold="true" Font-Size="Large" Font-Names="Coper Black" ForeColor="BlanchedAlmond" />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:sqlcon %>" 
            SelectCommand="SELECT [cid], [pic], [cname], [cmaker], [quantity], [tprice] FROM [buydetails]">
        </asp:SqlDataSource>
    </td>
    
    <td> 
      </td></tr> </tr>
    </table>
    </table>
</asp:Content>
