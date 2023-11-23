using System;
using System.Data;
using System.Data.SqlClient;
using Utilities;

namespace PizzaShopLibrary
{
    public class Prices
    {
        DBConnect dbConnect = new DBConnect();
        SqlConnection connection;
        SqlCommand DBCommand;
        SqlDataReader dataReader;

        public decimal GetPizzaTotal(string crust, string sauce, string toppings)
        {
            decimal crustPrice = GetCrustPrice(crust);
            decimal saucePrice = GetSaucePrice(sauce);
            decimal toppingPrice = GetToppingPrice(toppings);

            decimal totalPrice = crustPrice + saucePrice + toppingPrice;
            return totalPrice;
        }

        //get price of crust from the database
        public decimal GetCrustPrice(string crust)
        {
            decimal crustPrice = 0;

            try
            {
                connection = dbConnect.GetConnection();
                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                }
                DBCommand = new SqlCommand("SELECT Price FROM [dbo].[Crusts] WHERE Name = '" + crust + "'", connection);
                dataReader = DBCommand.ExecuteReader();

                if (dataReader.Read())
                {
                    crustPrice += (decimal)dataReader["Price"];
                }
                dataReader.Close();
                dbConnect.CloseConnection();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
            return crustPrice;
        }

        //get price of topping from the database
        public decimal GetToppingPrice(string toppings)
        {
            decimal toppingPrice = 0;
            try
            {
                string[] toppingsList = toppings.Split(',');
                connection = dbConnect.GetConnection();

                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                }

                foreach (string topping in toppingsList)
                {
                    DBCommand = new SqlCommand("SELECT Price FROM [dbo].[Toppings] WHERE Name = '" + topping.Trim() + "'", connection);
                    dataReader = DBCommand.ExecuteReader();
                    if (dataReader.Read())
                    {
                        toppingPrice += (decimal)dataReader["Price"];
                    }
                    dataReader.Close();
                }
                dbConnect.CloseConnection();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }

            return toppingPrice;
        }

        //get price of sauce from the database
        public decimal GetSaucePrice(string sauce)
        {
            decimal saucePrice = 0;

            try
            {
                connection = dbConnect.GetConnection();
                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                }

                DBCommand = new SqlCommand("SELECT Price FROM [dbo].[Sauces] WHERE Name = '" + sauce + "'", connection);
                dataReader = DBCommand.ExecuteReader();

                if (dataReader.Read())
                {
                    saucePrice += (decimal)dataReader["Price"];
                }
                dataReader.Close();
                dbConnect.CloseConnection();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
            return saucePrice;
        }

    }
}
