using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Security.Cryptography;
using System.Security.Cryptography.Xml;
using System.IO;
using System.Text;

public partial class signature_client : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["token"] != null)
        {
            try
            {
                if (TokenManager.IsValidToken(this))
                {
                    success();
                }
                else
                {
                    fail(false);
                }
            }
            catch (Exception ex)
            {
                fail(false);
            }
        }
        else
        {
            fail(true);
        }
    }

    private void fail(bool b)
    {
        pnlMain.Visible = false;
        if (!b)
        {
            ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "javascript:alert('Invalid Security Token.');", true);
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "javascript:alert('No Security Token Found.');", true);
        }
    }

    private void success()
    {
        pnlMain.Visible = true;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtData.Text.Length != 0)
        {
            SignData(Server.HtmlEncode(txtData.Text));
        }
    }

    string SignData(string Data)
    {
        StreamWriter writer = null;
        string fName;
        try
        {
            DateTime dt = DateTime.Now;
            fName = "DATA_" + dt.Day.ToString() + "_" + dt.Month.ToString() + "_" + dt.Year.ToString() + "_" + dt.Hour.ToString() + "_" + dt.Minute.ToString() + "_" + dt.Second.ToString() + "_" + dt.Millisecond.ToString() + ".xml";
            writer = File.CreateText(Server.MapPath("~/Sign_Docs") + "/" + fName);
            writer.WriteLine("<Data>");
            writer.WriteLine("<Text>" + Data + "</Text>");
            writer.WriteLine("<Sign>" + GetSign() + "</Sign>");
            writer.WriteLine("</Data>");
            writer.Flush();

            ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "javascript:alert('Success.');", true);
            txtData.Text = "";
        }
        catch (Exception ex)
        {
            fName = null;
        }
        finally
        {
            writer.Close();
        }
        return fName;
    }

    private string GetSign()
    {
        if (File.Exists(Server.MapPath("~/Sign_Docs") + "\\sign.sng"))
        {
            StreamReader reader = File.OpenText(Server.MapPath("~/Sign_Docs") + "\\sign.sng");
            string DigitalSign = reader.ReadToEnd();
            reader.Close();
            return DigitalSign;
        }
        else
        {
            UnicodeEncoding Encode = new UnicodeEncoding();
            string data = "ASDFGHJKLZXCVBNMQWERTYUIOPpoiuytrewqlkjhgfdsamnbvcxz123456789951357825654123578748963JGJGHJGHJGkhdfhgsfjhg464";
            byte[] bData = new byte[Encode.GetByteCount(data)];
            bData = Encode.GetBytes(data);
            string sign = Convert.ToBase64String(bData);
            StreamWriter writer = File.CreateText(Server.MapPath("~/Sign_Docs") + "\\sign.sng");
            writer.WriteLine(sign);
            writer.Flush();
            writer.Close();

            StreamReader reader = File.OpenText(Server.MapPath("~/Sign_Docs") + "\\sign.sng");
            string DigitalSign = reader.ReadToEnd();
            reader.Close();
            return DigitalSign;
        }
    }
}