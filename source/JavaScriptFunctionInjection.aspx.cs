using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;

public partial class JavaScriptFunctionInjection : System.Web.UI.Page
{
    public string sValue = string.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button2_Click(Object sender, CommandEventArgs e)
    {
        string formValue = Request.Form["Text1"] as string;
        string formValue2 = Request.Form["Text2"] as string;

        if (e.CommandArgument == "single")
        {

            if (!string.IsNullOrEmpty(formValue))
            {
                sValue = Server.HtmlEncode(formValue.Replace("'", "''"));
            }
        }
        else
        {
            if (!string.IsNullOrEmpty(formValue2))
            {
                sValue = formValue2; //quote
            }
        }
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}
