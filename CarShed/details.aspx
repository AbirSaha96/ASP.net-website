<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="CarShed.details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table><tr style="font-family: 'Comic Sans MS'">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="cid" 
    BorderWidth="1px" CellPadding="3" GridLines="Vertical"
        DataSourceID="SqlDataSource1" Width="1143px"  
        style="font-family: 'Cooper Black'">
        <ItemTemplate>
            <table><tr>
            <td>
            <asp:Label ID="cidLabel" runat="server" Text='<%# Eval("cid") %>' Visible="false" />
            <br /></td>
            <td>         
            <asp:Image ID="picone" runat="server" ImageUrl='<%# Eval("picone") %>'  Height="250px"
                    Width="320px"/>
            <br />
            </td>
            <td>
            <asp:Image ID="pictwo" runat="server" ImageUrl='<%# Eval("pictwo") %>' Height="100px"
                    Width="150px" />
            <br />
            
            <asp:Image ID="picthree" runat="server" ImageUrl='<%# Eval("picthree") %>' Height="100px"
                    Width="150px" />
            <br />
            
            <asp:Image ID="picfour" runat="server" ImageUrl='<%# Eval("picfour") %>' Height="100px"
                    Width="150px"/>
            <br />
            </td>
            <td>
            <table><tr><td>

            <asp:Label ID="cnameLabel" runat="server" Text='<%# Eval("cname") %>'  Font-Bold="true" Font-Size="XX-Large" Font-Names="Comic Sans MS" ForeColor="Aqua"/>
            <br />
            </td></tr>
            <tr><td>
            <asp:Label ID="cmakerLabel" runat="server" Text='<%# Eval("cmaker") %>' Font-Bold="true" Font-Size="Large" Font-Names="Coper Black" ForeColor="BlanchedAlmond" />
            <br />
            </td></tr>
            <tr><td>
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' Font-Bold="true" Font-Italic="true" Font-Size="XX-Large" Font-Names="Comic Sans MS" ForeColor="AntiqueWhite" />
            <br />
            </td></tr><tr><td>
            Catagory :
            <asp:Label ID="catagoryLabel" runat="server" Text='<%# Eval("catagory") %>'  Font-Size=Medium ForeColor="BurlyWood" />
            <br />
            details:
            <asp:Label ID="detailsLabel" runat="server" Text='<%# Eval("details") %>' Font-Size=Medium ForeColor="BurlyWood" />
            <br />
            launched in :
            <asp:Label ID="launchLabel" runat="server" Text='<%# Eval("launch") %>' Font-Size=Medium ForeColor="BurlyWood" />
            <br />
            maxspeed:
            <asp:Label ID="maxspeedLabel" runat="server" Text='<%# Eval("maxspeed") %>' Font-Size=Medium ForeColor="BurlyWood" />
            <br />
            body Type :
            <asp:Label ID="bodyLabel" runat="server" Text='<%# Eval("body") %>' Font-Size=Medium ForeColor="BurlyWood" />
            <br />
            </td></tr>
            <tr><td>
            <asp:Image ID="buy" runat="server" ImageUrl="~/buy-now.gif"  Height="100px" Width="120px"/>
<br /> </td></tr></table></td></tr></table>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:sqlcon %>" 
        SelectCommand="SELECT * FROM [cardetails] WHERE ([cid] = @cid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="cid" QueryStringField="cid" Type="String" 
                DefaultValue="1" />
        </SelectParameters>
    </asp:SqlDataSource>

    </table>
</asp:Content>
