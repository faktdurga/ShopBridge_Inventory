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
    public partial class ShopBridge_Inventory : System.Web.UI.Page
    {
        string str = @"Data Source=DESKTOP-93R7Q3C\SQLEXPRESS; Initial Catalog=ShopBridge; Integrated Security=true";
        protected void Page_Load(object sender, EventArgs e)
        {
            
                BindID();
            
            
        }

        //insert into inventory
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(str);
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert_Into_Inventory", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Product_name", txtProductName.Text.Trim());
                cmd.Parameters.AddWithValue("@Suffix", txtSuffix.Text.Trim());
                cmd.Parameters.AddWithValue("@Manufacturer", txtManufacturer.Text.Trim());
                cmd.Parameters.AddWithValue("@ModelNumber", txtMDLN.Text.Trim());
                cmd.Parameters.AddWithValue("@Manufactur_Date", txtMFGD.Text.Trim());
                cmd.Parameters.AddWithValue("@ProductCategory", txtCategory.Text.Trim());
                cmd.Parameters.AddWithValue("@ModelName", txtMDLName.Text.Trim());
                cmd.Parameters.AddWithValue("@ProductCost", Convert.ToInt32(txtProductCost.Text.Trim()));
                cmd.Parameters.AddWithValue("@ProductQuantity", Convert.ToInt32(txtQuanity.Text.Trim()));
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script> alert('Record Added') </script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script> alert('" + ex.Message + "');</script>");
            }
        }

        //Bind ID to product id drop down
        public void BindID()
        {
            try
            {
                SqlConnection con = new SqlConnection(str);
                con.Open();
                SqlCommand cmd = new SqlCommand("BindProductID_DropDown", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                drpProductID.DataSource = dt;
                drpProductID.DataTextField = "ProductID";
                drpProductID.DataValueField = "ProductID";
                drpProductID.DataBind();
                con.Close();

            }
            catch (Exception)
            {

                throw;
            }
        }

        //update records
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(str);
                con.Open();
                SqlCommand cmd = new SqlCommand("Update_Into_Inventory", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ProductID", Convert.ToInt32(drpProductID.SelectedValue));
                cmd.Parameters.AddWithValue("@ProductName", txtProductName.Text.Trim());
                //cmd.Parameters.AddWithValue("@Product_name", txtProductName.Text.Trim());
                cmd.Parameters.AddWithValue("@Suffix", txtSuffix.Text.Trim());
                cmd.Parameters.AddWithValue("@ManufacturerName", txtManufacturer.Text.Trim());
                cmd.Parameters.AddWithValue("@ModelNumber", txtMDLN.Text.Trim());
                cmd.Parameters.AddWithValue("@MDate", txtMFGD.Text.Trim());
                cmd.Parameters.AddWithValue("@Categories", txtCategory.Text.Trim());
                cmd.Parameters.AddWithValue("@MName", txtMDLName.Text.Trim());
                cmd.Parameters.AddWithValue("@Cost", Convert.ToInt32(txtProductCost.Text.Trim()));
                cmd.Parameters.AddWithValue("@Quantity", Convert.ToInt32(txtQuanity.Text.Trim()));
                cmd.Parameters.AddWithValue("@PDescription", txtDescription.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script> alert('Record Updated') </script>");


            }
            catch (Exception ex)
            {

                Response.Write("<script> alert('" + ex.Message + "');</script>");
            }


        }

        //search with product ID
        protected void btnGO_Click(object sender, EventArgs e)
        {

            try
            {

                SqlConnection con = new SqlConnection(str);
                con.Open();
                SqlCommand cmd = new SqlCommand("BindByProductID", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ProductID", Convert.ToInt32(drpProductID.SelectedValue));
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                DataTable dt = ds.Tables[0];

                txtProductName.Text = dt.Rows[0]["ProductName"].ToString();
                txtSuffix.Text = dt.Rows[0]["Suffix"].ToString();
                txtManufacturer.Text = dt.Rows[0]["ManufacturerName"].ToString();
                txtMDLN.Text = dt.Rows[0]["ModelNumber"].ToString();
                txtMFGD.Text = dt.Rows[0]["ManufacturerDate"].ToString();
                txtCategory.Text = dt.Rows[0]["PoductCategory"].ToString();
                txtMDLName.Text = dt.Rows[0]["ModelName"].ToString();
                txtProductCost.Text = dt.Rows[0]["ProductCost"].ToString();
                txtQuanity.Text = dt.Rows[0]["ProductQuantity"].ToString();
                txtDescription.Text = dt.Rows[0]["ProductDescription"].ToString();
                con.Close();

            }
            catch (Exception ex)
            {

                Response.Write("<script> alert('" + ex.Message + "');</script>");
            }
        }

        //Delete record
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(str);
                con.Open();
                SqlCommand cmd = new SqlCommand("Delete_From_Inventory", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ProductID", Convert.ToInt32(drpProductID.SelectedValue));
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script> alert('Record Deleted') </script>");
            }
            catch (Exception ex)
            {

                Response.Write("<script> alert('" + ex.Message + "');</script>");
            }
        }
    }
}