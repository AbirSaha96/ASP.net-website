<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CarShed.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-family: "Adobe Caslon Pro Bold";
            font-size: x-large;
            color: #000066;
            text-decoration: underline;
            background-color: #FFFFFF;
        }
        .style3
        {
            color: #000066;
            background-color: #FF9933;
        }
        .style4
        {
            font-family: "Informal Roman";
            text-decoration: underline;
            font-size: xx-large;
        }
        .style5
        {
            font-size: xx-large;
            font-family: "Adobe Garamond Pro Bold";
            text-decoration: underline;
            color: #0066FF;
        }
        .style6
        {
            font-family: "Kozuka Gothic Pro R";
            font-size: x-large;
            text-decoration: underline;
            color: #33CC33;
        }
        .style7
        {
            text-align: center;
        }
    </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div class="style7">
    
        <div class="style7">
            <br />
            <span class="style6"><strong><em style="text-align: center">New Arrivals<br />
            </em></strong></span>
            <br />
        </div>
        <asp:DataList ID="DataList3" runat="server" style="text-align: center">
        </asp:DataList>
        <br />
        <div class="style7">
            <span class="style1"><strong style="text-align: center">
            <br />
            Brands</strong></span><br class="style3" />
            <asp:ImageButton ID="ImageButton1" runat="server" Height="54px" Width="103px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" Height="54px" 
                style="margin-top: 0px" Width="104px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton3" runat="server" Height="54px" 
                style="margin-top: 0px" Width="104px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton4" runat="server" Height="54px" 
                style="margin-top: 0px" Width="104px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton5" runat="server" Height="54px" 
                style="margin-top: 0px" Width="104px" />
            <br />
            <br />
            <span class="style4"><strong style="color: #00FFCC">Trending Cars</strong></span><br />
            <br />
        </div>
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#EFF3FB" />
            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <div class="style7">
            <br />
            <span class="style5"><strong>Best Selling<br />
            </strong></span>
            <br />
            <asp:DataList ID="DataList2" runat="server">
            </asp:DataList>
            <br />
        </div>    
    </div>
    </form>
</body>
</html>
