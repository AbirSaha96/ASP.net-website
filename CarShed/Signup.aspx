<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="CarShed.Signup" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="h1" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script type="text/javascript">
        function checkPassword(str) {
            var re = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}$/;
            return re.test(str);
        }
        </script>
    <style type="text/css">
       #pass
        {
            width: 302px;
        }
        #conpass
        {
            width: 299px;
        }
        .style1
        {
            color: #FFFFFF;
        }
        .style2
        {
            color: #FFCC99;
        }
    </style>
</head>
<body >
    <form id="form1" method="post" title="Signup">
    <p style="font-family: 'Bodoni MT'; font-size: x-large; font-weight: bolder; font-style: oblique; font-variant: inherit; color: #33CC33; text-decoration: underline blink">
        Sign Up Here!!</p>
    <span class="style1">&nbsp;&nbsp; First&nbsp; Name </span>:&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="fname" Display="Dynamic" ErrorMessage="*Reqd." 
        ForeColor="#CC3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:TextBox ID="fname" runat="server" Width="143px" ></asp:TextBox>
&nbsp;<span class="style1">&nbsp; Middle Name :&nbsp;</span>&nbsp;
    <asp:TextBox ID="mname" runat="server" Width="168px"></asp:TextBox>
&nbsp; <span class="style1">Last Name :</span>&nbsp;&nbsp;<asp:RequiredFieldValidator 
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
    <span class="style1">E-Mail Id&nbsp; :&nbsp;&nbsp;</span>
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
    <span class="style1">&nbsp;Password :&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
        ID="pass" runat="server" CausesValidation="True" TextMode="Password" MaxLength="20" Width="333px"></asp:TextBox>
    &nbsp; &nbsp;&nbsp;<asp:CustomValidator ID="CustomValidator1" runat="server" 
        ClientValidationFunction=" checkPassword" ControlToValidate="pass" 
        ErrorMessage="min. 6 words containing one caps, one no. , underscore , " 
        ForeColor="Red"></asp:CustomValidator>
    &nbsp;&nbsp;&nbsp;
    <br />
    <span class="style2">&nbsp;Confirm Password&nbsp; :</span>&nbsp;<asp:TextBox ID="conpass" runat="server" TextMode="Password"
        Width="336px"></asp:TextBox>
    &nbsp; &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="pass" ControlToValidate="conpass" Display="Dynamic" 
        ErrorMessage="Doesnot match with password" SetFocusOnError="True" 
        ForeColor="Red"></asp:CompareValidator>
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
