using System;
using System.Data.SqlClient;
using System.Configuration;

public partial class voteForProduct : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ToString());
    public string total_like = "";
    public string total_unlike = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        total_like = "";
        total_unlike = "";
        if (Request.QueryString["pid"] != null && Request.QueryString["o"] != null && Request.QueryString["token"] != null)
        {
            try
            {
                if (TokenManager.IsValidToken(this))
                {
                    processRequest(Request.QueryString["pid"], Convert.ToChar(Request.QueryString["o"]));
                    success(Convert.ToChar(Request.QueryString["o"]));
                }
                else
                {
                    fail();
                }
            }
            catch (Exception ex)
            {
                fail();
            }
        }
        else
        {
            fail();
        }
    }

    private void fail()
    {
        pnlMain.Visible = false;
        Response.Write("<h3 style=\"font-family:Verdana; color:Red; text-align:center;\">Invalid Request Can not be processed</h3>");
    }

    private void success(char o)
    {
        if (o == 'l')
        {
            Response.Write("<h3 style=\"font-family:Verdana; color:Green; text-align:center;\">You liked this product</h3>");
        }
        else if (o == 'u')
        {
            Response.Write("<h3 style=\"font-family:Verdana; color:Red; text-align:center;\">You unliked this product</h3>");
        }
    }

    void processRequest(string pid,char opt)
    {
        SqlCommand updatecmd=null;
        switch (opt)
        {
            case 'l':
                updatecmd = new SqlCommand("update product set total_like = (total_like+1) where product_id = " + pid, con);
                con.Open();
                updatecmd.ExecuteNonQuery();
                con.Close();
                break;
            case 'u':
                updatecmd = new SqlCommand("update product set total_unlike = (total_unlike+1) where product_id = " + pid, con);
                con.Open();
                updatecmd.ExecuteNonQuery();
                con.Close();
                break;
            default:
                break;
        }

        SqlCommand Getcmd = new SqlCommand("Select total_like ,total_unlike from product where product_id = " + pid, con);
        con.Open();
        SqlDataReader reader = Getcmd.ExecuteReader();
        if (reader.HasRows)
        {
            if (reader.Read())
            {
                total_like = reader[0].ToString();
                total_unlike = reader[1].ToString();
            }
        }

    }
}