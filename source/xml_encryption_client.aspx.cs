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
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtNumber.Text.Trim().Length != 0 && txtName.Text.Trim().Length != 0 && txtCVV.Text.Trim().Length != 0)
        {
            string FileName = CreateXMLFile(txtNumber.Text.Trim(), txtName.Text, ddlMonth.Text + "/" + ddlYear.Text, txtCVV.Text);
            if (FileName != null)
            {
                DoInit(Server.MapPath("~/XML_Docs") + "/" + FileName, true);
            }
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "javascript:alert('Please Fille All Fields');", true);
        }
    }

    string CreateXMLFile(string card_no, string card_name, string expiry, string CVV)
    {
        StreamWriter writer = null;
        string fName;
        try
        {
            //Random rNum = new Random();
            //fName = "XML_" + rNum.Next().ToString() + ".xml";
            DateTime dt = DateTime.Now;
            fName = "XML_" + dt.Day.ToString() + "_" + dt.Month.ToString() + "_" + dt.Year.ToString() + "_" + dt.Hour.ToString() + "_" + dt.Minute.ToString() + "_" + dt.Second.ToString() + "_" + dt.Millisecond.ToString() + ".xml";
            writer = File.CreateText(Server.MapPath("~/XML_Docs") + "/" + fName);
            writer.WriteLine("<creditcards>");
            writer.WriteLine("<creditcard>");
            writer.WriteLine("<card_number>" + card_no + "</card_number>");
            writer.WriteLine("<card_name>" + card_name + "</card_name>");
            writer.WriteLine("<expiry_date>" + expiry + "</expiry_date>");
            writer.WriteLine("<CVC>" + CVV + "</CVC>");
            writer.WriteLine("</creditcard>");
            writer.WriteLine("</creditcards>");
            writer.Flush();
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
            if (Ecrypt)
            {
                Encrypt(xmlDoc, "creditcard", "EncryptedElement1", rsaKey, "rsaKey");
                xmlDoc.Save(xmlfile);

                txtNumber.Text = "";
                txtName.Text = "";
                ddlMonth.SelectedIndex = 0;
                ddlYear.SelectedIndex = 0;
                txtCVV.Text = "";
                ClientScript.RegisterStartupScript(this.GetType(), Guid.NewGuid().ToString(), "javascript:alert('Success.');", true);
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

    public static void Encrypt(XmlDocument Doc, string ElementToEncrypt, string EncryptionElementID, RSA Alg, string KeyName)
    {
        if (Doc == null)
            throw new ArgumentNullException("Doc");
        if (ElementToEncrypt == null)
            throw new ArgumentNullException("ElementToEncrypt");
        if (EncryptionElementID == null)
            throw new ArgumentNullException("EncryptionElementID");
        if (Alg == null)
            throw new ArgumentNullException("Alg");
        if (KeyName == null)
            throw new ArgumentNullException("KeyName");

        XmlElement elementToEncrypt = Doc.GetElementsByTagName(ElementToEncrypt)[0] as XmlElement;

        if (elementToEncrypt == null)
        {
            throw new XmlException("The specified element was not found");

        }
        RijndaelManaged sessionKey = null;

        try
        {
            sessionKey = new RijndaelManaged();
            sessionKey.KeySize = 256;

            EncryptedXml eXml = new EncryptedXml();

            byte[] encryptedElement = eXml.EncryptData(elementToEncrypt, sessionKey, false);

            EncryptedData edElement = new EncryptedData();
            edElement.Type = EncryptedXml.XmlEncElementUrl;
            edElement.Id = EncryptionElementID;

            edElement.EncryptionMethod = new EncryptionMethod(EncryptedXml.XmlEncAES256Url);
            EncryptedKey ek = new EncryptedKey();

            byte[] encryptedKey = EncryptedXml.EncryptKey(sessionKey.Key, Alg, false);

            ek.CipherData = new CipherData(encryptedKey);

            ek.EncryptionMethod = new EncryptionMethod(EncryptedXml.XmlEncRSA15Url);

            DataReference dRef = new DataReference();

            dRef.Uri = "#" + EncryptionElementID;

            ek.AddReference(dRef);

            edElement.KeyInfo.AddClause(new KeyInfoEncryptedKey(ek));

            KeyInfoName kin = new KeyInfoName();

            kin.Value = KeyName;

            ek.KeyInfo.AddClause(kin);

            edElement.CipherData.CipherValue = encryptedElement;

            EncryptedXml.ReplaceElement(elementToEncrypt, edElement, false);
        }
        catch (Exception e)
        {
            // re-throw the exception.
            throw e;
        }
        finally
        {
            if (sessionKey != null)
            {
                sessionKey.Clear();
            }
        }
    }
}