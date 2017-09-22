<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="slider" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <form runat="server">
        <div><p style="font-size:medium;font-stretch:extra-expanded;font-style:oblique;background-color:#54f693;">Shipping Info</p></div>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Shipping Address"></asp:Label>&nbsp; &nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="txtShippingAddress" TextMode="MultiLine" Style="align-content: center; width: 225px; max-height: 80px; max-width: 300px;" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtShippingAddress" ErrorMessage="ShippingAddress is required" ForeColor="Red" ValidationGroup="abc">*</asp:RequiredFieldValidator>
                    <br />
                </td>

            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblContactInfo" runat="server" Text="Mobile no"></asp:Label>
                    &nbsp; &nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="txtContactInfo" Height="23px" Width="225px" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtContactInfo" ErrorMessage="Contact Number is required" ForeColor="Red" ValidationGroup="abc">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtContactInfo" ErrorMessage="Invalid Mobile Number" ForeColor="Maroon" ValidationExpression="\D*([2-9]\d{2})(\D*)([2-9]\d{2})(\D*)(\d{4})\D*" ValidationGroup="abc">!</asp:RegularExpressionValidator>
                    <br />
                </td>

            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    &nbsp; &nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="txtEmail" Height="23px" Width="225px" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email address is required" ForeColor="Red" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Incorrect Email address" ForeColor="Maroon" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="abc">!</asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
        <hr style="width: 400px;" />

        <div><p style="font-size:medium;font-stretch:extra-expanded;font-style:oblique;background-color:#54f693;">Payment Info</p></div>
        <asp:Label ID="Label1" runat="server" Text="Name on Card"></asp:Label>
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
    <asp:TextBox ID="txtNameOnCard" runat="server" Height="23px" Width="225px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Name on card is required" ControlToValidate="txtNameOnCard" ForeColor="Red" ValidationGroup="abc">*</asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:Label ID="Label2" runat="server" Text="Card Number"></asp:Label>
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:TextBox ID="txtCCNumber" runat="server" Height="23px" Width="225px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Card Number is required" ControlToValidate="txtCCNumber" ForeColor="Red" ValidationGroup="abc">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtCCNumber" ErrorMessage="Invalid Card" ForeColor="Maroon" ValidationExpression="^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})$" ValidationGroup="abc">!</asp:RegularExpressionValidator>
        <br />
        <br />

        <asp:Label ID="Label4" runat="server" Text="Select your Card"></asp:Label>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlCardType" runat="server">
            <asp:ListItem>Visa</asp:ListItem>
            <asp:ListItem>AMEX</asp:ListItem>
            <asp:ListItem>Discover</asp:ListItem>
            <asp:ListItem>Master Card</asp:ListItem>
            
        </asp:DropDownList>
        &nbsp;&nbsp; 
        <asp:Label ID="Label5" runat="server" Text="Card Type"></asp:Label>&nbsp; &nbsp;
    <asp:DropDownList ID="ddlCard" runat="server">
        <asp:ListItem>Debit</asp:ListItem>
        <asp:ListItem>Credit</asp:ListItem>
    </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Expiry Date"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:DropDownList ID="ddlmonth" runat="server">
            <asp:ListItem Value="month">month</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="ddlyear" runat="server">
            <asp:ListItem Value="year">year</asp:ListItem>
            <asp:ListItem>2016</asp:ListItem>
            <asp:ListItem>2017</asp:ListItem>
            <asp:ListItem>2018</asp:ListItem>
            <asp:ListItem>2019</asp:ListItem>
            <asp:ListItem>2020</asp:ListItem>
            <asp:ListItem>2021</asp:ListItem>
            <asp:ListItem>2022</asp:ListItem>
        </asp:DropDownList><br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Billing Zip"></asp:Label>
        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="125px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Billing Zip is required" ControlToValidate="TextBox1" ForeColor="Red" ValidationGroup="abc">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid Zip Code" ForeColor="Maroon" ValidationExpression="\d{5}(-\d{4})?" ValidationGroup="abc">!</asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Pay"
            Style="height: 35px; width: 100px; color: forestgreen; font-size: large;border:double;border-color:#dd06f6;"
            OnClientClick="javascript:alert('Are you sure to continue?');" OnClick="Button2_Click" ValidationGroup="abc" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="abc" Font-Italic="True" Font-Size="14pt" ForeColor="Red" />
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

