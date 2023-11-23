<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PizzaOrder.aspx.cs" Inherits="PizzaShop2.PizzaOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-family: "Cascadia Code";
            font-size: x-large;
        }
        .auto-style2 {
            font-size: large;
            position: absolute;
            top: 120px;
            left: 110px;
            z-index: 1;
            bottom: 633px;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            font-size: medium;
            text-decoration: underline;
        }
        .auto-style5 {
            font-size: medium;
            position: absolute;
            top: 160px;
            left: 30px;
            z-index: 1;
            font-weight: normal;
            bottom: 482px;
        }
        .auto-style6 {
            font-size: medium;
            position: absolute;
            top: 190px;
            left: 30px;
            z-index: 1;
            font-weight: normal;
            bottom: 452px;
        }
        .auto-style7 {
            font-size: medium;
            position: absolute;
            top: 220px;
            left: 30px;
            z-index: 1;
            font-weight: normal;
            bottom: 533px;
        }
        .auto-style8 {
            position: absolute;
            left: 200px;
            z-index: 1;
            top: 160px;
        }
        .auto-style9 {
            position: absolute;
            left: 200px;
            z-index: 1;
            top: 190px;
        }
        .auto-style10 {
            position: absolute;
            left: 200px;
            z-index: 1;
            top: 220px;
        }
        .auto-style11 {
            position: absolute;
            left: 200px;
            z-index: 1;
            top: 280px;
        }
        .auto-style12 {
            font-size: large;
            position: absolute;
            top: 360px;
            left: 130px;
            z-index: 1;
            bottom: 393px;
        }
        .auto-style13 {
            font-size: medium;
            position: absolute;
            top: 410px;
            left: 50px;
            z-index: 1;
            font-weight: normal;
            bottom: 343px;
        }
        .auto-style14 {
            position: absolute;
            top: 410px;
            left: 200px;
            z-index: 1;
            width: 132px;
        }
        .auto-style15 {
            font-size: medium;
            position: absolute;
            top: 280px;
            left: 30px;
            z-index: 1;
            font-weight: normal;
            bottom: 473px;
            width: 140px;
        }
        .auto-style16 {
            text-align: center;
        }
        .auto-style17 {
            font-size: medium;
            position: absolute;
            top: 440px;
            left: 50px;
            z-index: 1;
            font-weight: normal;
            bottom: 313px;
        }
        .auto-style18 {
            font-size: medium;
            position: absolute;
            top: 470px;
            left: 50px;
            z-index: 1;
            font-weight: normal;
            bottom: 283px;
        }
        .auto-style19 {
            font-size: medium;
            position: absolute;
            top: 500px;
            left: 50px;
            z-index: 1;
            font-weight: normal;
            bottom: 253px;
        }
        .auto-style20 {
            font-size: medium;
            position: absolute;
            top: 530px;
            left: 50px;
            z-index: 1;
            font-weight: normal;
            bottom: 213px;
        }
        .auto-style21 {
            position: absolute;
            top: 470px;
            left: 200px;
            z-index: 1;
            width: 132px;
        }
        .auto-style22 {
            position: absolute;
            top: 500px;
            left: 200px;
            z-index: 1;
            width: 132px;
        }
        .auto-style23 {
            width: 130px;
            height: 28px;
            position: absolute;
            top: 530px;
            left: 200px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 440px;
            left: 200px;
            z-index: 1;
            width: 132px;
        }
        .auto-style25 {
            font-size: large;
            position: absolute;
            top: 120px;
            left: 1010px;
            z-index: 1;
            bottom: 623px;
            color: #000000;
            background-color: #FFFFFF;
        }
        .auto-style26 {
            width: 360px;
            height: 150px;
            position: absolute;
            top: 170px;
            left: 850px;
            z-index: 1;
        }
        .auto-style27 {
            position: absolute;
            top: 540px;
            left: 350px;
            z-index: 1;
            width: 190px;
        }
        .auto-style28 {
            position: absolute;
            top: 460px;
            left: 1050px;
            z-index: 1;
        }
        .auto-style29 {
            height: 115px;
        }
        .auto-style30 {
            position: absolute;
            top: 250px;
            left: 30px;
            z-index: 1;
        }
        .auto-style31 {
            position: absolute;
            top: 250px;
            left: 200px;
            z-index: 1;
        }
        .auto-style32 {
            position: absolute;
            top: 280px;
            left: 380px;
            z-index: 1;
        }
        .auto-style33 {
            position: absolute;
            top: 320px;
            left: 240px;
            z-index: 1;
        }
        .auto-style34 {
            position: absolute;
            top: 160px;
            left: 380px;
            z-index: 1;
        }
        .auto-style35 {
            position: absolute;
            top: 190px;
            left: 380px;
            z-index: 1;
        }
        .auto-style36 {
            position: absolute;
            top: 220px;
            left: 380px;
            z-index: 1;
        }
        .auto-style37 {
            position: absolute;
            top: 250px;
            left: 380px;
            z-index: 1;
        }
        .auto-style38 {
            position: absolute;
            top: 410px;
            left: 360px;
            z-index: 1;
        }
        .auto-style39 {
            z-index: -1;
        }
        .auto-style40 {
            position: absolute;
            top: 440px;
            left: 360px;
            z-index: 1;
        }
        .auto-style41 {
            position: absolute;
            top: 470px;
            left: 360px;
            z-index: 1;
        }
        .auto-style42 {
            position: absolute;
            top: 500px;
            left: 360px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style29">
        <div class="auto-style1">
            Pizza Ordering System<br />
            <span class="auto-style4">Here you can order whatever your heart desires.</span></div>
        <h2 class="auto-style3">
            <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text="Customer Email:"></asp:Label>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style12" Text="Pizza Order"></asp:Label>
            <asp:Image ID="imgBackground" runat="server" CssClass="auto-style39" Height="629px" ImageUrl="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwallpaperaccess.com%2Ffull%2F866650.jpg&amp;f=1&amp;nofb=1&amp;ipt=c265b23e7f1da6ee3bca91155009593ff37678976ad972450b4c87c0eb078823&amp;ipo=images" Width="1470px" />
        </h2>
        <p>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Customer Name:"></asp:Label>
        </p>
        <p class="auto-style16">
            <asp:Label ID="Label4" runat="server" CssClass="auto-style15" Text="Rewards ID:"></asp:Label>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="auto-style10" ToolTip="Enter your phone number,"></asp:TextBox>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style9" ToolTip="Enter your email."></asp:TextBox>
            <asp:TextBox ID="txtName" runat="server" CssClass="auto-style8" ValidationGroup="Customer" ToolTip="Enter your name."></asp:TextBox>
            <asp:TextBox ID="txtVIP" runat="server" CssClass="auto-style11"></asp:TextBox>
            <asp:Button ID="btnVerify" runat="server" CssClass="auto-style32" OnClick="btnVerify_Click" Text="Verify" />
            <asp:Label ID="lblPoints" runat="server" CssClass="auto-style33"></asp:Label>
            <strong>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style25" Text="Pizzas Ordered"></asp:Label>
            </strong>
            <asp:GridView ID="gvOrders" runat="server" CssClass="auto-style26" OnSelectedIndexChanged="gvOrders_SelectedIndexChanged" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" ShowFooter="True" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" Visible="False" />
                    <asp:BoundField DataField="Size" HeaderText="Size" />
                    <asp:BoundField DataField="Crust" HeaderText="Crust" />
                    <asp:BoundField DataField="Sauces" HeaderText="Sauce" />
                    <asp:BoundField DataField="Toppings" HeaderText="Toppings" />
                    <asp:BoundField DataField="Price" DataFormatString="{0:C}" HeaderText="Price" />
                    <asp:TemplateField>
                        <FooterTemplate>
                            <!-- Add the content you want to display in the footer here -->
                            <asp:Label ID="lblTotal" runat="server" Text="" />
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
                
            </asp:GridView>
        </p>
        <p>
            <asp:Label ID="Label6" runat="server" CssClass="auto-style18" Text="Pizza Crust:"></asp:Label>
            <asp:DropDownList ID="ddlDeliveryType" runat="server" CssClass="auto-style14">
                <asp:ListItem Text="Please Select" Value="" />
                <asp:ListItem>Pick-up</asp:ListItem>
                <asp:ListItem>Delivery</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="reqDelivery" runat="server" ControlToValidate="ddlDeliveryType" CssClass="auto-style38" EnableClientScript="False" ErrorMessage="Enter a delivery method." InitialValue="" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="reqSize" runat="server" CssClass="auto-style40" ErrorMessage="Enter a size type." ControlToValidate="ddlPizzaSize" EnableClientScript="False" InitialValue="" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="reqCrust" runat="server" CssClass="auto-style41" ErrorMessage="Enter a crust type." ControlToValidate="ddlPizzaCrust" EnableClientScript="False" InitialValue="" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="reqSauce" runat="server" CssClass="auto-style42" ErrorMessage="Enter a sauce type." ControlToValidate="ddlPizzaSauce" EnableClientScript="False" InitialValue="" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label ID="Label7" runat="server" CssClass="auto-style7" Text="Customer Phone:"></asp:Label>
            <asp:Label ID="Label13" runat="server" CssClass="auto-style30" Text="Customer Address:"></asp:Label>
            <asp:TextBox ID="txtAddress" runat="server" CssClass="auto-style31" ToolTip="Enter your address"></asp:TextBox>
        </p>
        <p>
            <strong>
            <asp:Label ID="Label12" runat="server" CssClass="auto-style2" Text="Customer Information"></asp:Label>
            </strong>
            <asp:Label ID="Label8" runat="server" CssClass="auto-style13" Text="Delivery Type:"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label9" runat="server" CssClass="auto-style19" Text="Pizza Sauce:"></asp:Label>
        </p>
        <p>
            <asp:Button ID="btnAddPizza" runat="server" CssClass="auto-style27" OnClick="btnAddPizza_Click" Text="Add Pizza to Order List" />
            <asp:Button ID="btnSubmit" runat="server" CssClass="auto-style28" OnClick="btnSubmit_Click" Text="Submit Order" />
            <asp:DropDownList ID="ddlPizzaSize" runat="server" CssClass="auto-style24">
                <asp:ListItem Text="Please Select" Value="" />
                <asp:ListItem Value="5.99">Small</asp:ListItem>
                <asp:ListItem Value="8.99">Medium</asp:ListItem>
                <asp:ListItem Value="12.99">Large</asp:ListItem>
                <asp:ListItem Value="15.99">X-Large</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddlPizzaSauce" runat="server" CssClass="auto-style22" DataTextField="SauceName" DataValueField="Price">
            </asp:DropDownList>
            <asp:CheckBoxList ID="cbPizzaToppings" runat="server" CssClass="auto-style23" DataTextField="ToppingName" DataValueField="Price">
            </asp:CheckBoxList>
            <asp:Label ID="Label10" runat="server" CssClass="auto-style20" Text="Pizza Toppings:"></asp:Label>
            <asp:Label ID="Label11" runat="server" CssClass="auto-style17" Text="Pizza Size:"></asp:Label>
            <asp:DropDownList ID="ddlPizzaCrust" runat="server" CssClass="auto-style21" DataTextField="CrustType" DataValueField="Price">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="reqName" runat="server" ControlToValidate="txtName" CssClass="auto-style34" EnableClientScript="False" ErrorMessage="You must enter a name." ForeColor="Red" ValidationGroup="Customer" Font-Bold="True"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail" CssClass="auto-style35" EnableClientScript="False" ErrorMessage="Enter a valid email." Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAddress" CssClass="auto-style37" Display="Dynamic" EnableClientScript="False" ErrorMessage="Enter a valid address." Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPhone" CssClass="auto-style36" EnableClientScript="False" ErrorMessage="Enter a valid phone number" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
    </form>
    </body>
</html>
