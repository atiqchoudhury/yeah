using System;

namespace PizzaShopLibrary
{
    public class Pizza
    {
        private string pizzaSize;
        private string pizzaCrust;
        private string pizzaSauce;
        private string pizzaToppings;
        private decimal price;

        public String Size
        {
            get { return pizzaSize; }
            set { pizzaSize = value; }
        }

        public String Crust
        {
            get { return pizzaCrust; }
            set { pizzaCrust = value; }
        }

        public String Sauces
        {
            get { return pizzaSauce; }
            set { pizzaSauce = value; }
        }

        public String Toppings
        {
            get { return pizzaToppings; }
            set { pizzaToppings = value; }
        }

        public Decimal Price
        {
            get { return price; }
            set { price = value; }
        }

        public Pizza()
        {

        }


    }
}
