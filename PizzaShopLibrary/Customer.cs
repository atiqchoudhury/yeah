namespace PizzaShopLibrary
{
    public class Customer
    {
        private string customerName;
        private string customerEmail;
        private string customerAddress;
        private string customerPhone;

        public string Name
        {
            get { return customerName; }
            set { customerName = value; }
        }

        public string Email
        {
            get { return customerEmail; }
            set { customerEmail = value; }
        }

        public string Address
        {
            get { return customerAddress; }
            set { customerAddress = value; }
        }

        public string Phone
        {
            get { return customerPhone; }
            set { customerPhone = value; }
        }

        public Customer() // constructor
        {

        }
    }
}
