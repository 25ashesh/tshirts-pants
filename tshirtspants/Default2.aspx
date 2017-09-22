<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .dotimg {
            height: 110px;
            width: 120px;
            border: 2px solid Red;
        }

            .dotimg:hover {
                border: 2px solid Green;
            }
    </style>
        <script language="javascript" type="text/javascript">

            function HideLabel() {
                document.getElementById('<%=Label4.ClientID %>').style.display = "none";
                document.getElementById('<%=lblSubmitReport.ClientID %>').style.display = "none";

        }
        setTimeout("HideLabel();", 4500);
    </script>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="slider" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <div class="tabs" style="width: 875px; height: 555px;">
        <div id="content">
            <form runat="server">
                <br />
                <br />
                <img src="images/Cooper.jpg" class="dotimg" /><br />
                <asp:Label ID="Label2" runat="server" Text="LeeCooper Jeans"></asp:Label>
                <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" OnCheckedChanged="PriceCalculate" /><br />
                <asp:DropDownList ID="ddlPant" runat="server" AutoPostBack="True" OnSelectedIndexChanged="PriceCalculate">
                    <asp:ListItem Value="0">Quantity</asp:ListItem>
                    <asp:ListItem Value="1">1 pieces</asp:ListItem>
                    <asp:ListItem Value="2">2 pieces</asp:ListItem>
                    <asp:ListItem Value="3">3 pieces</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlColor1" runat="server">
                    <asp:ListItem>Color</asp:ListItem>
                    <asp:ListItem style="color: Blue;">Blue</asp:ListItem>
                    <asp:ListItem>Black</asp:ListItem>
                    <asp:ListItem style="color: Maroon;">Gray</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlSize1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="PriceCalculate">
                    <asp:ListItem Value="0">Size</asp:ListItem>
                    <asp:ListItem style="font-size: small;" Value="1">Small</asp:ListItem>
                    <asp:ListItem style="font-size: medium;" Value="1.25">Medium</asp:ListItem>
                    <asp:ListItem style="font-size: large;" Value="1.5">Large</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <img src="images/diesel.jpg" class="dotimg" /><br />
                <asp:Label ID="Label3" runat="server" Text="Deisel Tshirt"></asp:Label>
                <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="PriceCalculate" /><br />
                <asp:DropDownList ID="ddlShirt" runat="server" AutoPostBack="True" OnSelectedIndexChanged="PriceCalculate">
                    <asp:ListItem Value="0">Quantity</asp:ListItem>
                    <asp:ListItem Value="1">1 pieces</asp:ListItem>
                    <asp:ListItem Value="2">2 pieces</asp:ListItem>
                    <asp:ListItem Value="3">3 pieces</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlColor2" runat="server">
                    <asp:ListItem>Color</asp:ListItem>
                    <asp:ListItem style="color: #cf0;">White</asp:ListItem>
                    <asp:ListItem>Black</asp:ListItem>
                    <asp:ListItem style="color: Red;">Red</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlSize2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="PriceCalculate">
                    <asp:ListItem Value="0">Size</asp:ListItem>
                    <asp:ListItem style="font-size: small;" Value="1">Small</asp:ListItem>
                    <asp:ListItem style="font-size: medium;" Value="1.25">Medium</asp:ListItem>
                    <asp:ListItem style="font-size: large;" Value="1.5">Large</asp:ListItem>
                </asp:DropDownList>

                <br />
                <br />


                &nbsp;
                    <asp:Label ID="Label1" Style="height:32px;" runat="server"></asp:Label>
                <asp:Label ID="lblSubmitReport" Style="height:32px;background-color:#cfdeaa" runat="server"></asp:Label>
                <br />
                <br />

                <asp:Label ID="Label4" runat="server" Style="height: 34px; padding:2px;"></asp:Label><br/><br/>

                <asp:Button ID="Button2" runat="server" Text="Order Now!"
                    Style="height: 45px; width: 160px; color: Maroon; font-size: x-large;" OnClick="Button2_Click"
                    OnClientClick="return confirm('Are you sure you want to place this order?');" />
                <br />
                <br />
            </form>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
