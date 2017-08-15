<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="brands.aspx.cs" Inherits="CarShed.brands" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellspacing="20px" cellpadding="10px" border="invisible" >
    <tr>
    <td>
    <asp:ImageButton ID="ferrari" runat="server" Height="90px" 
        Width="152px" ImageUrl="~/ferrari logo.jpg" onclick="ferrari_Click" 
            ToolTip="Ferrari" />
        </td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <td>
    
    <asp:ImageButton ID="mitsu" runat="server"  Height="100px"  OnClick="mitsu_Click"
        Width="151px" ImageUrl="~/mitsubishi logo.jpg" 
            ToolTip="Mitsubishi" />
</td>
    <td><asp:ImageButton ID="dodge" runat="server"  Height="104px" 
        Width="130px" ImageUrl="~/logo-dodge.jpg" onclick="dodge_Click" 
            ToolTip="Dodge"/>
    </td><br />
    <br />
    <td>
    <asp:ImageButton ID="ply" runat="server"  Height="103px" 
        Width="104px" ImageUrl="~/plymouth.jpg" onclick="ply_Click" 
            ToolTip="Plymouth"/></td>
    <td><asp:ImageButton ID="lambo" runat="server"  Height="89px" 
        Width="149px" ImageUrl="~/logo lam.png" onclick="lambo_Click" 
            ToolTip="Lamborghini"/></td></tr></table>
        
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal"
            RepeatColumns="2" BackColor="White" BorderColor="#E7E7FF" 
    BorderStyle="None" BorderWidth="1px" CellPadding="5" GridLines="Horizontal" 
        Width="1196px" DataKeyField="cid">
        <ItemTemplate>
         
        <asp:Label ID="cidLabel" runat="server" Text='<%# Eval("cid") %>' Visible="false" />
            
            <br />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("cmaker") %>'  Visible="false" />
   
            
            <asp:Image ID="picone" runat="server" ImageUrl='<%# Eval("picone") %>'/>
            <br />
            
       
            
            <asp:Label ID="cnameLabel" runat="server" Text='<%# Eval("cname") %>' />
            <br />
            <a href="details.aspx?cid=<%# Eval("cid")%>">
            <asp:Image ID="info" runat="server" ImageUrl="~/info.jpg" Height="30px" Width="75px" /></a>
<br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:sqlcon %>" 
        
                
                SelectCommand="SELECT [cid], [cmaker], [picone], [cname] FROM [cardetails] WHERE ([cmaker] = @cmaker)">
        <SelectParameters>
            <asp:QueryStringParameter Name="cmaker" 
                QueryStringField="s" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    
</asp:Content>
