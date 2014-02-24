using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Windows.Forms; 

public partial class Default2 : System.Web.UI.Page
{

    string s1, s2, s3, s4;
    //**********************SQL Connection String ******************************************************
    //SqlConnection con = new SqlConnection("Data Source=OM\\SQLEXPRESS;Initial Catalog=Security;Integrated Security=True");
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ToString());
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    //**********************user login ******************************************************
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select UserName,Password,designation from UserLogin where UserName='" + TextBox1.Text.ToString() + "'", con);
        cmd.Connection.Open();

        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        int i;
        for (i = 0; i < 2; i++)
        {
            if (dr.Read())
            {
                s1 = dr[0].ToString();
                s2 = dr[1].ToString();
                s3 = dr[2].ToString();
            }
        }

        cmd.Connection.Close();

        s4 = "Manager";

        if ((s1 == TextBox1.Text) && (s2 == TextBox2.Text))
        {
            if (s3 == s4)
            {
                Session["Text1"] = TextBox1.Text.ToString();
                Response.Redirect("manager.aspx");
            }
            else
            {
                Session["Text1"] = TextBox1.Text.ToString();
                Response.Redirect("employee.aspx");
            }
        }
        else
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}
