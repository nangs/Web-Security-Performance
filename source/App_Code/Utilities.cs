using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Xml;
using System.Collections;
using System.IO;
using Microsoft.Practices.EnterpriseLibrary.Data;

/// <summary>
/// Summary description for Utilities
/// </summary>
public sealed class Utilities
{
	static Utilities instance = null;
    static readonly object padlock = new object();

    Utilities()
    {
    }

    public static Utilities Instance
    {
        get
        {
            lock (padlock)
            {
                if (instance == null)
                {
                    instance = new Utilities();
                }
                return instance;
            }
        }
    }

    public static Database GetDatabase()
    {
        Database db = DatabaseFactory.CreateDatabase("MyConnectionString");
        return db;
    }
}
