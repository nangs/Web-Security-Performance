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
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Diagnostics;
using antiSQLInjection;
using gudusoft.gsqlparser;
using gudusoft.gsqlparser.Units;

public partial class Default11 : System.Web.UI.Page
{
    string sqlCommand = string.Empty;
    string strResult = string.Empty;
    object oEs;

    protected void Page_Load(object sender, EventArgs e)
    {
        string strQs = string.Empty;
        if (Request.QueryString["strErr"] != null)
        {
            strQs = Request.QueryString["strErr"] as string;
            lblDisplayErr.Text = strQs;
            HideLabel();
        }
        NoCache(); //remove cache
        ReadFromCookies();
    }

    void ReadFromCookies()
    {
        lblCookies.Text = string.Empty;
        if (Response.Cookies["email"] != null)
        {
            HttpCookie aCookie = Request.Cookies["email"];
            if (!string.IsNullOrEmpty(aCookie.Value))
            {
                lblCookies.Text = "Data from cookies:" + aCookie.Value;
            }
        }
    }

    void FakeCookies()
    {
        Response.Cookies["email"].Value = txtUserName.Text;
        Response.Cookies["email"].Expires = DateTime.Now.AddDays(1);

        Response.Cookies["age"].Value = "22";
        Response.Cookies["age"].Expires = DateTime.Now.AddDays(1);
    }

    //************************* To cheack Login Authorisation**********************************
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        sqlCommand = "SELECT 'b' FROM dbo.tbl_users WHERE username='" + txtUserName.Text + "' AND password='" + txtPassword.Text + "'";

        TextBox3.Text = sqlCommand.ToString();
        Label3.Text = testInjection(TextBox3.Text);

        //Database db = Utilities.GetDatabase();

        //using (DbCommand dbCommand = db.GetSqlStringCommand(sqlCommand))
        //{
        //    oEs = db.ExecuteScalar(dbCommand);
        //}

        //if (oEs != null)
        //{
        //    strResult = oEs as string;
        //}

        //if (!string.IsNullOrEmpty(strResult))
        //{
        //    lblDisplayErr.Text = "Login successful";
        //    FakeCookies();
        //}
        //else
        //{
        //    Response.Redirect("secure_login.aspx?strErr=Invalid Username or Password");
        //}
        //HideLabel();
    }

    void NoCache()
    {
        Response.AddHeader("Cache-Control", "no-cache");
        Response.Expires = -1;
        Response.Cache.SetNoStore();
        Response.AddHeader("Pragma", "no-cache");

    }

    void HideLabel()
    {
        string strScript = string.Empty;
        string strCtrl = lblDisplayErr.ClientID;
        strScript = "<script>HideCtrl('" + strCtrl + "', '5000')</script>"; //hide after 3 sec
        Page.ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), strScript, false);
    }

    private String testInjection(String testSQL)
    {
        TAntiSQLInjection anti = new TAntiSQLInjection(TDbVendor.DbVOracle);
        String msg = "";
        if (anti.isInjected(TextBox3.Text))
        {
            msg = "SQL injected found:<br />";
            for (int i = 0; i < anti.getSqlInjections().Count; i++)
            {
                msg = msg + Environment.NewLine + ("Type: " + anti.getSqlInjections()[i].getType() + "<br />Description: " + anti.getSqlInjections()[i].getDescription());
            }
        }
        else
        {
            msg = "Not injected !";
            string str;
            try
            {
                sqlCommand = "SELECT 'b' FROM dbo.tbl_users WHERE username='" + txtUserName.Text + "' AND password='" + txtPassword.Text + "'";
                Database db = Utilities.GetDatabase();

                using (DbCommand dbCommand = db.GetSqlStringCommand(sqlCommand))
                {
                    oEs = db.ExecuteScalar(dbCommand);
                }

                if (oEs != null)
                {
                    strResult = oEs as string;
                }

                if (!string.IsNullOrEmpty(strResult))
                {
                    lblDisplayErr.Text = "Login successful";
                    FakeCookies();
                }
                else
                {
                    Response.Redirect("secure_login.aspx?strErr=Invalid Username or Password");
                }
                HideLabel();
            }
            catch (Exception ex)
            {

            }
        }
        return msg;
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {

        Server.Transfer("secure_login.aspx");
    }
}
