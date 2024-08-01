using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;

namespace Employee_Management
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Seth"].ConnectionString);


        protected void insertBTN_Click(object sender, EventArgs e)
        {
            string sql = "insertEmployee";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ssn", ssnBox.Text);
            cmd.Parameters.AddWithValue("@fullnames", fullNameBox.Text);
            cmd.Parameters.AddWithValue("@dept", deptBox.Text);
            cmd.Parameters.AddWithValue("@salary", salaryBox.Text);
            cmd.Parameters.AddWithValue("@index", indexBox.Text);




            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            // Clear the TextBox controls after successful insertion
            ssnBox.Text = string.Empty;
            fullNameBox.Text = string.Empty;
            fullNameBox.Text = string.Empty;
            deptBox.Text = string.Empty;
            salaryBox.Text = string.Empty;
            indexBox.Text = string.Empty;


        }

        protected void updateBTN_Click(object sender, EventArgs e)
        {
            string sql = "ApplyEmployeeBonus";
           
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;



            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }



        }

        protected void deleteBTN_Click(object sender, EventArgs e)
        {
            string sql = "delete_employee";
            
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ssn", ssnBox.Text);



            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }

        void viewData()
        {
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("select * from Employees", con);
                {
                    //cmd.CommandType = CommandType.StoredProcedure;

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }

        protected void displayBTN_Click1(object sender, EventArgs e)
        {
            viewData();
        }
    }
}