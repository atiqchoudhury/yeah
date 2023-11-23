using PizzaShopLibrary;
using System;
using System.Collections;
using System.Web.UI;
using System.Web.UI.WebControls;

// i ran visual studios cleanup feature to get rid of the redundant lines of code

namespace PizzaShop2
{
    public partial class PizzaOrder : System.Web.UI.Page
    {
        Customer customer = new Customer();
        RewardProcessor points = new RewardProcessor();
        Prices cost = new Prices();
        SetupProcessor setup = new SetupProcessor();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.populateOrderGrid();
                setup.GetCrusts(ddlPizzaCrust);

                // inserts a new text row inside the DDL into position [0]
                ddlPizzaCrust.Items.Insert(0, new ListItem("Please select", ""));
                setup.GetSauces(ddlPizzaSauce);
                ddlPizzaSauce.Items.Insert(0, new ListItem("Please select", ""));

                // toppings dont need item.insert cuz its a checkbox
                setup.GetToppings(cbPizzaToppings);
            }
        }

        //dead
        protected void gvOrders_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnAddPizza_Click(object sender, EventArgs e)
        {
            ArrayList pizzas = (ArrayList)Session["order"];
            if (pizzas == null) // make the arraylist if it does not exist already
            {
                pizzas = new ArrayList();
                Session["order"] = pizzas;
            }

            decimal sizePrice = decimal.Parse(ddlPizzaSize.SelectedValue);
            string toppings = "";

            //get the checkboxes
            for (int i = 0; i < cbPizzaToppings.Items.Count; i++)
            {
                if (cbPizzaToppings.Items[i].Selected)
                {
                    if (!String.IsNullOrEmpty(toppings))
                    {
                        toppings += ", ";
                    }
                    toppings += cbPizzaToppings.Items[i].Text;
                }
            }

            decimal price = sizePrice + cost.GetPizzaTotal(ddlPizzaCrust.SelectedItem.Text, ddlPizzaSauce.SelectedItem.Text, toppings);

            //create pizza object and put it into a session
            Pizza newPizza = new Pizza()
            {
                Size = ddlPizzaSize.SelectedItem.Text,
                Crust = ddlPizzaCrust.SelectedItem.Text,
                Sauces = ddlPizzaSauce.SelectedItem.Text,
                Toppings = toppings,
                Price = price
            };
            pizzas.Add(newPizza);
            Session["order"] = pizzas;

            if (txtVIP.Text != null && txtVIP.Text != String.Empty)
            {
                int rewardPoints = Convert.ToInt16(txtVIP.Text);
                points.UpdateRewardPoints(rewardPoints); // update reward points
            }

            this.populateOrderGrid();

        }

        // populate the gridview on page with the pizzas stored in the session
        private void populateOrderGrid()
        {
            ArrayList pizzas = (ArrayList)Session["order"];

            if (pizzas != null)
            {
                gvOrders.DataSource = pizzas;
                gvOrders.DataBind();
                Label lblTotal = gvOrders.FooterRow.FindControl("lblTotal") as Label;
                decimal TotalPrice = (decimal)0.0;

                // calculate total price of order
                foreach (Pizza pizza in pizzas)
                {
                    TotalPrice = TotalPrice + pizza.Price;
                }
                if (lblTotal != null)
                {
                    lblTotal.Text = "Total: $" + TotalPrice;
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            customer.Name = txtName.Text;
            customer.Address = txtAddress.Text;
            customer.Email = txtEmail.Text;
            customer.Phone = txtPhone.Text;

            Session["Name"] = customer.Name;
            Session["Email"] = customer.Email;
            Session["Address"] = customer.Address;
            Session["Phone"] = customer.Phone;


            if (Page.IsValid)
            {
                Response.Redirect("PizzaReceipt.aspx");
            }
            else
            {
                Page.Validate();
            }

        }

        protected void btnVerify_Click(object sender, EventArgs e)
        {
            try
            {
                int reward = points.VIPRewards(int.Parse(txtVIP.Text)); // runs dbcommand to get how much points a person has  -- USE ACCOUNTID 1 TO TEST
                lblPoints.Text = "You have: " + reward.ToString() + " points!"; // displays the points
                Session["RewardPoints"] = reward;
            }
            catch (Exception ex)
            {
                Console.Write(ex);
            }

        }
    }
}