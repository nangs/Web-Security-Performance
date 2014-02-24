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
  

public partial class Default15 : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection("Data Source=OM\\SQLEXPRESS;Initial Catalog=Security;Integrated Security=True");
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into Emloyee(id,Message)values('"+TextBox2.Text.ToString()  +"','"+TextBox1.Text.ToString()+"')",con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand(" update Emloyee set Message='" + TextBox1.Text.ToString() + "'where id='" + TextBox2.Text.ToString() + "'", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand(" delete from Emloyee where id='" + TextBox2.Text.ToString() + "'", con);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}
