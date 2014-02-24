using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //byte[] data = new byte[20];
        //RandomNumberGenerator rand = RandomNumberGenerator.Create();
        //rand.GetBytes(data);
        //UTF8Encoding encoder = new UTF8Encoding();
        //StringBuilder displaystring = new StringBuilder();
        //for (int i = 0; i < data.Length; i++)
        //{
        //    displaystring.Append(data[i].ToString("x2"));
        //}
        //Response.Write(displaystring);
        TokenManager.SetToken(this);
        //Response.Write(TokenManager.GetToken());
        Response.Write(((HiddenField)this.FindControl("form_token")).Value);
        
    }
}