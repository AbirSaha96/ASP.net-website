<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CarShed.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    Hi!!!
    <asp:LoginName ID="LoginName1" runat="server" />
&nbsp;&nbsp;&nbsp; &nbsp;
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Home
</title>
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
        width: 158px;
    }
        </style>
    </head>
    <body>
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
<div>
<Table runat="server" Width="100%">
            <tr  runat="server">
                <td runat="server" cellpadding="0" cellspacing="0">
                <ul>
                <li>Brands</li>
                <li>As Per your Budget</li>
                <li>Types</li>
                </ul>
                </td>
                <td runat="server">
                <Table runat="server" style="text-align: center; width: 614px;">
                <tr style="text-align: center"><td class="style3">NEW ARRIVALS</td>
                </tr>
                <tr><td>
                <asp:DataList ID="newarr" runat="server">
        </asp:DataList></td>
        </tr>
        <tr><td class="style3">
        TRENDING Cars</td>
        </tr>
        <tr><td>
        <asp:DataList ID="trending" runat="server"></asp:DataList></td>
        </tr>
        <tr><td class="style3">
        BEST SELLING</td>
        </tr>
        <tr><td>
        <asp:DataList ID="bestselling" runat="server">
        </asp:DataList></td>
        </tr>
        <tr><td class="style3">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        BRANDS</td>
        </tr>
        <table>
        <tr>
        <td class="style3"><asp:ImageButton ID="ImageButton1" runat="server" Height="54px" Width="103px" />
        </td>

           <td> 
               <asp:ImageButton ID="ImageButton2" runat="server" Height="54px" 
                style="margin-top: 0px" Width="102px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                
          <td>  <asp:ImageButton ID="ImageButton3" runat="server" Height="54px" 
                style="margin-top: 0px" Width="104px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
          <td>  <asp:ImageButton ID="ImageButton4" runat="server" Height="54px" 
                style="margin-top: 0px" Width="104px" />&nbsp; </td>
                </tr>
                </Table>
                </tr>
        </Table>
         
         </td></tr>
            
        </Table>
</div>
</body>
</html>
</asp:Content>
