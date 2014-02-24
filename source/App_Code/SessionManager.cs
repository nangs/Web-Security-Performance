using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

public class SessionManager : Page
{
	public SessionManager()
	{
		
	}

    userInfo uInfo;

    protected override void OnInit(System.EventArgs e)
    {
        base.OnInit(e);

        if (Context.Session != null)
        {
            if (Session["_user_session_5bd"] == null)
            {
                Response.Redirect("~/login.aspx", true);
            }
            else
            {

            }
        }
        else
        {
            Response.Redirect("~/login.aspx", true);
        }
    }

    protected void setUsername()
    {
        uInfo = (userInfo)Session["_user_session_5bd"];
        //((Label)Master.FindControl("lblUserName")).Text = uInfo.UserName;
    }

    //***************************************************
    //*   Generates a Cryptographically strong token    *
    //***************************************************
}