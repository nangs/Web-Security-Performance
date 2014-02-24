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
using System.Windows.Forms ;

public partial class Default3 : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection("Data Source=OM\\SQLEXPRESS;Initial Catalog=Security;Integrated Security=True");
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //******************************** Create user ***********************************


        SqlCommand cmd = new SqlCommand("insert into UserLogin(FirstName,lastname,UserName,Password,ReTypePassword,Email,BOD,Address,mobile,sex,Sequrityquestion,Answer,designation)values('" + txtname.Text.ToString() + "','" + txtlastname.Text.ToString() + "','" + txtusername.Text.ToString() + "','" + TextBox1.Text.ToString() + "','" + txtrepassword.Text.ToString() + "','" + txtemail.Text.ToString() + "','" + txtbod.Text.ToString() + "','" + txtaddress.Text.ToString() + "','" + txtmobileno.Text.ToString() + "','" + DropDownList1.SelectedItem.ToString() + "','" + txtQuestion.SelectedItem.ToString() + "','" + txtanswer.Text.ToString() + "','"+DropDownList2.SelectedItem.ToString()+"')", con);
        try
        {
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            

            MessageBox.Show("Record is Save");
            Response.Redirect("Default2.aspx");
            txtaddress.Text = "";
            txtanswer.Text = "";
            txtbod.Text = "";

            txtemail.Text = "";
            txtlastname.Text = "";
            TextBox1 .Text = "";
            txtname.Text = "";
            //txtQuestion.Text = "";
            txtrepassword.Text = "";
            txtusername.Text = "";
            txtmobileno.Text = "";
        }
        catch(Exception ex )
        {

           Label1.Text ="Username already register"; 
        }

        cmd.Connection.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtaddress.Text = "";
        txtanswer.Text = "";
        txtbod.Text = "";

        txtemail.Text = "";
        txtlastname.Text = "";
        TextBox1 .Text = "";
        txtname.Text = "";
        //txtQuestion.Text = "";
        txtrepassword.Text = "";
        txtusername.Text = "";
        txtmobileno.Text = "";
    }
}
