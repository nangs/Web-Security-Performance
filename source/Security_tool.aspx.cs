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
using System.Diagnostics;
using antiSQLInjection;
using gudusoft.gsqlparser;
using gudusoft.gsqlparser.Units;
using System.Data.SqlClient;

public partial class Default5 : System.Web.UI.Page
{
    //*********************Sql Conncetion *****************************************************
    //SqlConnection con = new SqlConnection("Data Source=OM\\SQLEXPRESS;Initial Catalog=Security;Integrated Security=True");
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        //String testSQL;
        //txtInputSQL.Text = testSQL;

        txtOutput.Text = testInjection(txtInputSQL.Text);
    }

    private String testInjection(String testSQL)//**************Code for Testing Query***********************
    {
        TAntiSQLInjection anti = new TAntiSQLInjection(TDbVendor.DbVOracle);
        String msg = "";
        if (anti.isInjected(txtInputSQL.Text))
        {
            msg = "SQL injected found:";
            for (int i = 0; i < anti.getSqlInjections().Count; i++)
            {
                msg = msg + Environment.NewLine + ("type: " + anti.getSqlInjections()[i].getType() + ", description: " + anti.getSqlInjections()[i].getDescription());
            }
        }
        else
        {
            msg = "Not injected !";
           
                string str;
                str = txtInputSQL.Text;

                try
                {
                    SqlCommand cmd = new SqlCommand(str, con);
                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                    cmd.Connection.Close();
                    SqlCommand commandObj = new SqlCommand(str, con);

                    SqlDataReader readerObj;

                    con.Open();
                    readerObj = commandObj.ExecuteReader();

                    GridView1.DataSource = readerObj;

                    GridView1.DataBind();
                    con.Close();
  



                }
                catch (Exception ex)
                {

                    txtOutput0.Text = ex.Message; 
                }

          }

        return msg;

    }

    
   
}
