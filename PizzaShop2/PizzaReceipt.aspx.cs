using PizzaShopLibrary;
using System;
using System.Collections;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PizzaShop2
{
    public partial class PizzaReceipt : System.Web.UI.Page
    {
        decimal GrandTotal = 0; // stores total cost of pizza
        decimal DiscountPrice = 0; // stores discount applied to order
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["order"] != null)
                {
                    //get list of pizzas from order session and bind to gridview
                    ArrayList pizzaList = (ArrayList)Session["order"];
                    gvOrder.DataSource = pizzaList;
                    gvOrder.DataBind();

                    //retrieve the label in the footer row of gridview to display total price and how many pizzas ordered
                    Label lblTotal = gvOrder.FooterRow.FindControl("lblTotal") as Label;
                    Label lblQty = gvOrder.FooterRow.FindControl("lblQty") as Label;
                    decimal TotalPrice = 0;
                    int TotalQty = 0;
                    // calculate the total price + quantity of the pizzas
                    foreach (Pizza pizza in pizzaList)
                    {
                        TotalPrice = TotalPrice + pizza.Price;
                        TotalQty = TotalQty + 1;
                    }
                    GrandTotal = TotalPrice;

                    CalculateDiscount(); // calculate and display the discount applied to total price

                    TotalPrice = TotalPrice - DiscountPrice;
                    if (lblTotal != null)
                    {
                        lblTotal.Text = "Total: $" + TotalPrice;
                    }
                    if (lblQty != null)
                    {
                        lblQty.Text = "Total Qty:" + TotalQty;
                    }

                    lblCustomerName.Text = Session["Name"].ToString();
                    lblEmail.Text = Session["Email"].ToString();
                    lblAddress.Text = Session["Address"].ToString();
                    lblPhone.Text = Session["Phone"].ToString();
                }
            }
        }

        // calculate the discount based on the reward points
        private void CalculateDiscount()
        {
            if (Session["RewardPoints"] != null)
            {

                lblRewardPoints.Text = Session["RewardPoints"].ToString();
                int rewardPoints = Convert.ToInt16(Session["RewardPoints"]);

                if (rewardPoints > 0)
                {
                    decimal discountPercentage = (decimal)rewardPoints / (decimal)10.00; //divide points by 10%
                    DiscountPrice = (GrandTotal * discountPercentage) / 100;
                }
                lblDiscount.Text = "$" + DiscountPrice.ToString();
            }
        }
    }
}