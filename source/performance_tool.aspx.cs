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
using System.Diagnostics;

public partial class Default8 : System.Web.UI.Page
{
    SqlConnection con1;
    DateTime d, d1;
    string s1;
    string ServerName = ConfigurationManager.AppSettings["Server"].ToString();
    Stopwatch stopwatch = new Stopwatch();

    protected void Page_Load(object sender, EventArgs e)
    {
        //s1 = "Data Source=COM7\\SQLEXPRESS; Integrated Security=True";
        //    con1 = new SqlConnection(s1);
        //    SqlCommand sqlComm = new SqlCommand("SELECT name FROM master..sysdatabases", con1);
        //    sqlComm.Connection.Open();
        //    SqlDataReader myReader = sqlComm.ExecuteReader();
        //    while (myReader.Read())
        //    {
        //       //DropDownList1.Items.Add(myReader["name"]);
        //        DropDownList1.Items.Add(myReader["name"].ToString() );
        //    }
        //    sqlComm.Connection.Close();
    }
    //************************** get all table *****************

    protected void Button1_Click(object sender, EventArgs e)
    {
        DropDownList2.Items.Clear();

        //string s1 = "Data Source=OM\\SQLEXPRESS; Integrated Security=True;Initial Catalog=";
        string s1 = ServerName;

        s1 += DropDownList1.SelectedItem.ToString();
        SqlConnection con1 = new SqlConnection(s1);
        string k = "use ";
        k += DropDownList1.SelectedItem.ToString();
        SqlCommand cmd = new SqlCommand(k, con1);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        SqlCommand sqlComm = new SqlCommand("SELECT Name FROM sys.Tables", con1);
        sqlComm.Connection.Open();
        SqlDataReader myReader = sqlComm.ExecuteReader();
        while (myReader.Read())
        {
            DropDownList2.Items.Add(myReader["name"].ToString());
        }
        sqlComm.Connection.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    //************************** get all coloumn *****************
    protected void Button2_Click(object sender, EventArgs e)
    {
        DropDownList3.Items.Clear();
        //string s1 = "Data Source=OM\\SQLEXPRESS; Integrated Security=True;Initial Catalog=";
        string s1 = ServerName;

        s1 += DropDownList1.SelectedItem.ToString();
        con1 = new SqlConnection(s1);
        string k = "use";
        k += DropDownList1.SelectedItem.ToString();
        SqlCommand cmd = new SqlCommand(k, con1);
        string j = "Select name from  sys.columns WHERE object_id = object_id( '";
        j += DropDownList2.SelectedItem.ToString();
        j += "')";
        SqlCommand sqlComm = new SqlCommand(j, con1);
        sqlComm.Connection.Open();
        SqlDataReader myReader = sqlComm.ExecuteReader();
        while (myReader.Read())
        {
            DropDownList3.Items.Add(myReader["name"].ToString());
        }
        sqlComm.Connection.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        DoISPWAD();
        DoOther();
    }

    private void DoISPWAD()
    {
        try
        {
            stopwatch.Start();
            string s10;
            s10 = TextBox1.Text;
            string s1 = ServerName;

            s1 += DropDownList1.SelectedItem.ToString();
            con1 = new SqlConnection(s1);

            SqlDataAdapter ad = new SqlDataAdapter(s10, con1);
            DataSet ds = new DataSet();
            SqlCommandBuilder builder = new SqlCommandBuilder(ad);
            builder.DataAdapter.Fill(ds, DropDownList2.SelectedItem.ToString());

            GridView1.DataSource = ds;
            GridView1.DataBind();
            TextBox2.Text = "Command execute successfuly";
            txtISPWAD.Text = stopwatch.ElapsedMilliseconds.ToString();
        }
        catch (Exception ex)
        {
            txtISPWAD.Text = stopwatch.ElapsedMilliseconds.ToString();
            TextBox2.Text = "Error:" + ex.Message;
        }
    }

    private void DoOther()
    {
        Stopwatch stopwatch = new Stopwatch();
        try
        {
            stopwatch.Start();
            string s10;
            s10 = TextBox1.Text;
            string s1 = ServerName;

            s1 += DropDownList1.SelectedItem.ToString();
            con1 = new SqlConnection(s1);

            SqlDataAdapter ad = new SqlDataAdapter(s10, con1);
            DataSet ds = new DataSet();
            ad.Fill(ds, DropDownList2.SelectedItem.ToString());
            GridView1.DataSource = ds;
            GridView1.DataBind();
            TextBox2.Text = "Command execute successfuly";
            stopwatch.Stop();
            txtOther.Text = this.stopwatch.ElapsedMilliseconds.ToString();
        }
        catch (Exception ex)
        {
            stopwatch.Stop();
            txtOther.Text = this.stopwatch.ElapsedMilliseconds.ToString();
            TextBox2.Text = "Error:" + ex.Message;
        }
    }

    //************************** get all Database *****************
    protected void Button4_Click(object sender, EventArgs e)
    {
        s1 = ConfigurationManager.ConnectionStrings["MyConnectionString"].ToString();
        con1 = new SqlConnection(s1);
        SqlCommand sqlComm = new SqlCommand("SELECT name FROM master..sysdatabases", con1);
        sqlComm.Connection.Open();
        SqlDataReader myReader = sqlComm.ExecuteReader();
        while (myReader.Read())
        {
            DropDownList1.Items.Add(myReader["name"].ToString());
        }
        sqlComm.Connection.Close();
    }
}
