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
using gudusoft.gsqlparser;
using gudusoft.gsqlparser.Units;
using antiSQLInjection;
using System.Diagnostics; 

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String testSQL = "select empname  from emp where empno = 10 -- comment at the end of sql statement, maybe a sql injection";
        txtInputSQL.Text = testSQL;

        txtOutput.Text = testInjection(txtInputSQL.Text);

    }
    private String testInjection(String testSQL)
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
        }

        return msg;

    }

}
