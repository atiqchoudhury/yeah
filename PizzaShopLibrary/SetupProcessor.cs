 
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using Utilities;

namespace PizzaShopLibrary
{
    public class SetupProcessor
    {
        DBConnect dbConnect = new DBConnect();
        SqlConnection connection;
        SqlCommand DBCommand;
        SqlDataReader dataReader;

        // replaced SqlDataConnection/Connector whatever it was called with manual queries as professor said
        public void GetCrusts(DropDownList dropDownList) 
        {
            connection = dbConnect.GetConnection();
            if (connection.State == ConnectionState.Closed)
            {
                connection.Open();
            }

            DBCommand = new SqlCommand("select * from [dbo].[Crusts]", connection);
            dataReader = DBCommand.ExecuteReader();
            dropDownList.DataSource = dataReader;
            dropDownList.DataBind();
            dbConnect.CloseConnection();
        }

        public void GetSauces(DropDownList dropDownList)
        {
            connection = dbConnect.GetConnection();
            if (connection.State == ConnectionState.Closed)
            {
                connection.Open();
            }
            DBCommand = new SqlCommand("select * from Sauces", connection);
            dataReader = DBCommand.ExecuteReader();
            dropDownList.DataSource = dataReader;
            dropDownList.DataBind();
            dbConnect.CloseConnection();
        }

        public void GetToppings(CheckBoxList checkBoxList)
        {
            connection = dbConnect.GetConnection();
            if (connection.State == ConnectionState.Closed)
            {
                connection.Open();
            }
            DBCommand = new SqlCommand("select * from Toppings", connection);
            dataReader = DBCommand.ExecuteReader();
            checkBoxList.DataSource = dataReader;
            checkBoxList.DataBind();
            dbConnect.CloseConnection();
        }
    }
}
