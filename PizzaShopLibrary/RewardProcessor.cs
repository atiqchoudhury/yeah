using System;

using System.Data;
using System.Data.SqlClient;
using Utilities;

namespace PizzaShopLibrary
{
    public class RewardProcessor
    {
        DBConnect dbConnect = new DBConnect();
        SqlConnection connection;
        SqlCommand DBCommand;
        SqlDataReader dataReader;

        // get vip points for an account
        public int VIPRewards(int id)
        {
            int rewardPoints = 0;
            connection = dbConnect.GetConnection();
            connection.Open();
            DBCommand = new SqlCommand("SELECT * FROM [dbo].[VipRewardsAccounts] WHERE AccountID=" + id, connection);
            dataReader = DBCommand.ExecuteReader();

            if (dataReader.Read())
            {
                rewardPoints = Convert.ToInt32(dataReader["PointsEarned"]); // store the points if data is available
            }

            dbConnect.CloseConnection();
            return rewardPoints;
        }

        public void UpdateRewardPoints(int ID)
        {
            try
            {
                connection = dbConnect.GetConnection();
                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                }
                // prepare and execute an SQL command to reset earned points to zero for a VIP customer
                DBCommand = new SqlCommand("UPDATE [dbo].[VipRewardsAccounts] SET PointsEarned = 0 WHERE AccountID = " + ID, connection);
                DBCommand.ExecuteNonQuery();
                dbConnect.CloseConnection();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
        }
    }
}
