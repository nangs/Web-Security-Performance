using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Xml;

public partial class signature_server : System.Web.UI.Page
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
        LoadFiles();
    }

    void LoadFiles()
    {
        string Dir = Server.MapPath("~/Sign_Docs");
        string[] files = Directory.GetFiles(Dir,"*.xml");
        DataTable dtable = new DataTable("Sign_Docs");
        dtable.Columns.Add("fileName");
        string[] rows;
        foreach (string s in files)
        {
            rows = new string[1];
            rows[0] = Path.GetFileName(s);
            dtable.LoadDataRow(rows, true);
        }
        GridSIGNFile.DataSource = dtable;
        GridSIGNFile.DataBind();
    }

    protected void GridSIGNFile_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        string Dir = Server.MapPath("~/Sign_Docs");
        string file = GridSIGNFile.Rows[e.NewSelectedIndex].Cells[0].Text.ToString();
        string FullPath = Dir + "\\" + file;
        int i = Varify(FullPath);
        if (i == 1)
        {
            ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "javascript:alert('Invalid Signature.');", true);
        }
        else if (i == 0)
        {
            ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "javascript:alert('Valid Signature.');", true);
        }
        else if (i == 2)
        {
            ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "javascript:alert('No Signature Found.');", true);
        }
    }

    private int Varify(string FullPath)
    {
        try
        {
            StreamReader reader = File.OpenText(Server.MapPath("~/Sign_Docs") + "\\sign.sng");
            string DigitalSign = reader.ReadToEnd();
            reader.Close();

            XmlDocument Doc = new XmlDocument();
            Doc.PreserveWhitespace = true;
            Doc.Load(FullPath);
            XmlNodeList SignElement = Doc.GetElementsByTagName("Sign");
            if (SignElement.Count == 0)
            {
                return 2;
            }
            else
            {
                string DocSignData = SignElement[0].InnerText;
                if (DocSignData == DigitalSign)
                {
                    return 0;
                }
                else
                {
                    return 1;
                }
            }
        }
        catch (Exception ex)
        {
            return 1;
        }
    }
}