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

public partial class Default7 : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection("Data Source=OM\\SQLEXPRESS;Initial Catalog=Security;Integrated Security=True");
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["Text"] != null)
        //{
        //    txtusername.Text = (string)Session["Text"];
        //}

        if (Session["Text1"] != null)
        {
            txtusername.Text = (string)Session["Text1"];
        }
        SqlCommand cmd = new SqlCommand("select FirstName,lastname,Email,BOD,Address,mobile,sex from UserLogin where UserName='"+ txtusername.Text.ToString() +"' ", con);
        cmd.Connection.Open();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        int i;
        for (i = 0; i < 6; i++)
        {
            if (dr.Read())
            {
                txtname.Text = dr[0].ToString();
                txtlastname.Text = dr[1].ToString();
                txtemail.Text = dr[2].ToString();
                txtbod.Text = dr[3].ToString();
                txtaddress.Text = dr[4].ToString();
                txtmobileno.Text = dr[5].ToString();
                DropDownList1.Text = dr[6].ToString();
            }
        }
        cmd.Connection.Close(); 
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void txtaddress_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txtbod_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txtusername_TextChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void txtname_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txtemail_TextChanged(object sender, EventArgs e)
    {

    }
}
