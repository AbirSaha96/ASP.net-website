<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="CarShed.Signup" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="h1" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">
       #pass
        {
            width: 302px;
        }
        #conpass
        {
            width: 299px;
        }
    </style>
</head>
<body >
    <form id="form1" method="post" title="Signup">
    <p style="font-family: 'Bodoni MT'; font-size: x-large; font-weight: bolder; font-style: oblique; font-variant: inherit; color: #33CC33; text-decoration: underline blink">
        Sign Up Here!!</p>
&nbsp;&nbsp; First&nbsp; Name :&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="fname" Display="Dynamic" ErrorMessage="*Reqd." 
        ForeColor="#CC3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:TextBox ID="fname" runat="server" Width="143px" ></asp:TextBox>
&nbsp;&nbsp; Middle Name :&nbsp;&nbsp;
    <asp:TextBox ID="mname" runat="server" Width="168px"></asp:TextBox>
&nbsp; Last Name :&nbsp;&nbsp;<asp:RequiredFieldValidator 
        ID="RequiredFieldValidator2" runat="server" ControlToValidate="lname" 
        Display="Dynamic" ErrorMessage="*Reqd." ForeColor="#CC3300" 
        SetFocusOnError="True"></asp:RequiredFieldValidator>
    &nbsp;
    <asp:TextBox ID="lname" runat="server" Width="160px"></asp:TextBox>
    <asp:RadioButtonList ID="sex" runat="server" CellPadding="10" CellSpacing="10" 
        Height="34px" RepeatDirection="Horizontal" Width="85px">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
        <asp:ListItem>Others</asp:ListItem>
    </asp:RadioButtonList>
    E-Mail Id&nbsp; :&nbsp;&nbsp;
    <asp:TextBox ID="email" runat="server" Width="398px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="email" Display="Dynamic" ErrorMessage="*Reqd." 
        ForeColor="#CC3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="email" Display="Dynamic" 
        ErrorMessage="Please enter a Valid mail Id" SetFocusOnError="True" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br />
    <br />
&nbsp;Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
        ID="pass" runat="server" CausesValidation="True" TextMode="Password" MaxLength="20" Width="333px"></asp:TextBox>
    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;Confirm Password&nbsp; :&nbsp;<asp:TextBox ID="conpass" runat="server" TextMode="Password"
        Width="336px"></asp:TextBox>
    &nbsp; &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="pass" ControlToValidate="conpass" Display="Dynamic" 
        ErrorMessage="Doesnot match with password" SetFocusOnError="True"></asp:CompareValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
&nbsp;Date of Birth :&nbsp;&nbsp;
    <asp:DropDownList ID="dd" runat="server" 
        >
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="mm" runat="server" 
        >
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="yy" runat="server" 
        >
    </asp:DropDownList>
    <br />
&nbsp;<br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="accreate" runat="server" BackColor="#9966FF" 
        BorderColor="#CC3300" Font-Bold="True" Font-Italic="True" 
        Font-Names="Monotype Corsiva" Font-Size="Large" Font-Underline="False" 
         Text="Sign Up" onclick="accreate_Click" />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="status" runat="server" EnableViewState="False" 
        Text="You have already Registered once " Visible="False"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="loginhyp" runat="server" NavigateUrl="~/SignIn.aspx" 
        Visible="False">Click Here to Sign in</asp:HyperLink>
    <br />
    <br />
    <br />
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    </body>
</html>
</asp:Content>
