<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PizzaReceipt.aspx.cs" Inherits="PizzaShop2.PizzaReceipt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 457px;
            height: 177px;
            position: absolute;
            top: 430px;
            left: 870px;
            z-index: 1;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 377px;
            height: 160px;
            position: absolute;
            top: 210px;
            left: 930px;
            z-index: 1;
        }
        .auto-style4 {
            z-index: -1;
            margin-left: 0px;
        }
        .auto-style5 {
            font-weight: normal;
        }
        .auto-style6 {
            letter-spacing: 1pt;
            color: #FFFFFF;
        }
        .auto-style7 {
            height: 26px;
            letter-spacing: 1pt;
            color: #FFFFFF;
        }
        .auto-style8 {
            color: #FFFFFF;
        }
        .auto-style9 {
            position: absolute;
            top: 70px;
            left: 440px;
            z-index: 1;
            font-size: x-large;
            font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
            color: #FFFFFF;
            width: 968px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style3">
                <tr>
                    <td class="auto-style7">
                        <strong class="auto-style5">Customer Name:
                    </strong>
                    </td>
                    <td class="auto-style2">
                         <em>
                         <asp:Label ID="lblCustomerName" runat="server" Text="" CssClass="auto-style8" />
                         </em>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <strong class="auto-style5">Email: 
                    </strong> 
                    </td>
                    <td>
                         <em>
                         <asp:Label ID="lblEmail" runat="server" Text="" CssClass="auto-style8" />
                         </em>
                    </td>
                </tr>
                  <tr>
                    <td class="auto-style6">
                        Address:<strong class="auto-style5"> 
                    </strong> 
                    </td>
                    <td>
                         <em>
                         <asp:Label ID="lblAddress" runat="server" Text="" CssClass="auto-style8" />
                         </em>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <strong class="auto-style5">Phone:
                    </strong>
                    </td>
                    <td>
                         <em>
                         <asp:Label ID="lblPhone" runat="server" Text="" CssClass="auto-style8" />
                         </em>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <strong class="auto-style5">Reward Points Consumed:
                    </strong>
                    </td>
                    <td>
                         <em>
                         <asp:Label ID="lblRewardPoints" runat="server" Text="" CssClass="auto-style8" />
                         </em>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <strong class="auto-style5">Discount:
                    </strong>
                    </td>
                    <td>
                         <em>
                         <asp:Label ID="lblDiscount" runat="server" Text="" CssClass="auto-style8" />
                         </em>
                    </td>
                </tr>
            </table>
            <asp:GridView ID="gvOrder" runat="server" AutoGenerateColumns="False" ShowFooter="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style1">
                <Columns>
                     
                    <asp:BoundField DataField="Size" HeaderText="Size" />
                    <asp:BoundField DataField="Crust" HeaderText="Crust" />
                    <asp:BoundField DataField="Sauces" HeaderText="Sauces" />
                    <asp:BoundField DataField="Toppings" HeaderText="Toppings" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:TemplateField>
                        <FooterTemplate>
                            <asp:Label ID="lblTotal" runat="server" Text="" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <FooterTemplate>
                            <asp:Label ID="lblQty" runat="server" Text="" />
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
        </div>
        <asp:Image ID="Image1" runat="server" CssClass="auto-style4" Height="777px" ImageUrl="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimg.freepik.com%2Ffree-photo%2Ftasty-pepperoni-pizza-black-concrete-background_79782-103.jpg%3Fsize%3D626%26ext%3Djpg&amp;f=1&amp;nofb=1&amp;ipt=10563b5251676a1b26a5bf2661d9834a72c78abbd82b64bc9d119a3b44f12377&amp;ipo=images" Width="1410px" />
        <strong>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text="Your order has been sent to our team, here is your receipt!"></asp:Label>
        </strong>
    </form>
</body>
</html>
