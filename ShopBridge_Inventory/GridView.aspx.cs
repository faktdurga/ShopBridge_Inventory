using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace ShopBridge_Inventory
{
    public partial class GridView : System.Web.UI.Page
    {
        string str = @"Data Source = DESKTOP-93R7Q3C\SQLEXPRESS; Initial Catalog = ShopBridge; Integrated Security = true";
        protected void Page_Load(object sender, EventArgs e)
        {
            PopulateGrid();
        }

        //Below code is for populating grid
        public void PopulateGrid()
        {
            try
            {
                SqlConnection con = new SqlConnection(str);
                con.Open();
                SqlCommand cmd = new SqlCommand("GirdviewBind", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                drdInventory.DataSource = dt;
                drdInventory.DataBind();
                con.Close();               

            }
            catch (Exception ex)
            {

                Response.Write("<script> alert('" + ex.Message + "');</script>");
            }
            
        }
    }
}