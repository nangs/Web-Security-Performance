using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Security.Cryptography;
using System.Xml;
using System.Security.Cryptography.Xml;
using System.Data;
using System.Collections;

public partial class xml_encryption : System.Web.UI.Page
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

    void DoInit(string xmlfile,bool Ecrypt)
    {
        XmlDocument xmlDoc = new XmlDocument();

        try
        {
            xmlDoc.PreserveWhitespace = true;
            xmlDoc.Load(xmlfile);
        }
        catch (Exception e)
        {
            Console.WriteLine(e.Message);
        }

        CspParameters cspParams = new CspParameters();
        cspParams.KeyContainerName = "XML_ENC_RSA_KEY";

        RSACryptoServiceProvider rsaKey = new RSACryptoServiceProvider(cspParams);

        string fName;
        try
        {
            if (!Ecrypt)
            {
                XmlDocument xmlDoc1 = new XmlDocument();
                xmlDoc1.Load(xmlfile);
                Decrypt(xmlDoc1, rsaKey, "rsaKey");
                XmlNodeList elem = xmlDoc1.GetElementsByTagName("card_number");
                if (elem != null)
                {
                    lblNumber.Text = elem[0].InnerText;
                    elem = null;
                }

                elem = xmlDoc1.GetElementsByTagName("card_name");
                if (elem != null)
                {
                    lblName.Text = elem[0].InnerText;
                    elem = null;
                }

                elem = xmlDoc1.GetElementsByTagName("expiry_date");
                if (elem != null)
                {
                    lblDate.Text = elem[0].InnerText;
                    elem = null;
                }

                elem = xmlDoc1.GetElementsByTagName("CVC");
                if (elem != null)
                {
                    lblCVC.Text = elem[0].InnerText;
                    elem = null;
                }
            }
        }
        catch (Exception e)
        {
            Console.WriteLine(e.Message);
        }
        finally
        {
            rsaKey.Clear();
        }
    }

    public static void Decrypt(XmlDocument Doc, RSA Alg, string KeyName)
    {
        if (Doc == null)
            throw new ArgumentNullException("Document");
        if (Alg == null)
            throw new ArgumentNullException("Algorithm");
        if (KeyName == null)
            throw new ArgumentNullException("KeyName");

        EncryptedXml exml = new EncryptedXml(Doc);

        exml.AddKeyNameMapping(KeyName, Alg);

        exml.DecryptDocument();
    }

    void LoadFiles()
    {
        string Dir = Server.MapPath("~/XML_Docs");
        string[] files = Directory.GetFiles(Dir);
        DataTable dtable = new DataTable("XML_Files");
        dtable.Columns.Add("fileName");
        string[] rows;
        foreach(string s in files)
        {
            rows = new string[1];
            rows[0] = Path.GetFileName(s);
            dtable.LoadDataRow(rows, true);
        }
        GridXMLFile.DataSource = dtable;
        GridXMLFile.DataBind();
    }

    protected void GridXMLFile_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        string Dir = Server.MapPath("~/XML_Docs");
        string file = GridXMLFile.Rows[e.NewSelectedIndex].Cells[0].Text.ToString();
        string FullPath = Dir + "\\" + file;
        DoInit(FullPath, false);
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        lblNumber.Text = "";
        lblName.Text = "";
        lblDate.Text = "";
        lblCVC.Text = "";
    }
}