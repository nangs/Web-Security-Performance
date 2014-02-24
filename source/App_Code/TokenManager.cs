using System;
using System.Web;
using System.Web.UI;
using System.Security.Cryptography;
using System.Text;
using System.Web.UI.WebControls;

public abstract class TokenManager
{
	public TokenManager()
	{
		
	}

    //***************************************************
    //*   Validate token number against session values  *
    //*            and Double Submit Cookies            *
    //***************************************************
    public static bool IsValidToken(Page current)
    {
        try
        {
            if (current != null)
            {
                if (current.Request["form_token"] != null)
                {
                    string token = current.Session["user_token"].ToString();
                    if (token == current.Request["form_token"].ToString() && token == current.Request["client_token"].ToString())
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else if (current.Request["token"] != null)
                {
                    string token = current.Session["user_token"].ToString();
                    if (token == current.Request["token"].ToString() && token == current.Request["client_token"].ToString())
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }
        catch (Exception ex)
        {
            return false;
        }
    }

    //***************************************************
    //*   Generates a Cryptographically strong token    *
    //***************************************************
    public static string GetToken()
    {
        byte[] data = new byte[20];
        RandomNumberGenerator random = RandomNumberGenerator.Create();
        random.GetBytes(data);
        UTF8Encoding encoder = new UTF8Encoding();
        StringBuilder displaystring = new StringBuilder();
        for (int i = 0; i < data.Length; i++)
        {
            displaystring.Append(data[i].ToString("x2"));
        }
        return displaystring.ToString();
    }

    //***************************************************
    //*         Assign a token to a page                *
    //***************************************************
    public static string SetToken(Page current)
    {
        try
        {
            HiddenField form_token = null;
            HttpCookie token_cookie = null;

            form_token = new HiddenField();
            form_token.ID = "form_token";
            string token_id = GetToken();
            form_token.Value = token_id;

            token_cookie = new HttpCookie("client_token", token_id);
            token_cookie.HttpOnly = true;

            current.Response.Cookies.Add(token_cookie);
            current.Form.Controls.Add(form_token);

            current.Session["user_token"] = token_id;
            return token_id;
        }
        catch (Exception ex)
        {
            return "0";
        }
    }
}