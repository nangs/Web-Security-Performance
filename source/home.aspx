<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="home.aspx.cs" Inherits="Default2" Title="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style type="text/css">
        .td1
        {
            width:115px;
            height:27px;
            text-align:right;
            padding-right:5px;
        }
        
        .td2
        {
            width:150px;
            height:27px;
        }
        
        .td3
        {
            width:20px;
            height:27px;
        }
    </style>
    <div class="leftCol">
        <table border="0" style="border-collapse:collapse;">
            <tr>
                <td colspan="3" align="center" style="height:30px;">
                    <b>ISPWAD Login</b>
                </td>
            </tr>
            <tr>
                <td class="td1">
                    <b>UserName :</b>
                </td>
                <td class="td2">
                    <asp:TextBox ID="TextBox1" runat="server" Height="18px" Width="145px"></asp:TextBox>
                </td>
                <td class="td3">
                    
                </td>
            </tr>
            <tr>
                <td class="td1">
                    <b>Password :</b>
                </td>
                <td class="td2">
                    <asp:TextBox ID="TextBox2" runat="server" Height="17px" Width="145px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="td3">
                    
                </td>
            </tr>
            <tr>
                <td class="td1">
                    
                </td>
                <td class="td2">
                    <asp:Button ID="Button1" runat="server" Height="21px" Style="font-weight: 700" Text="Login"
                        Width="58px" OnClick="Button1_Click" />
                </td>
                <td class="td3">
                    
                </td>
            </tr>
            <tr>
                <td class="td1">
                    
                </td>
                <td class="td2">
                    <asp:HyperLink runat="server" ID="HyperLink1" CssClass="anchors" NavigateUrl="~/register.aspx">Register Here</asp:HyperLink>
                </td>
                <td class="td3">
                    
                </td>
            </tr>
        </table>
    </div>
    <div class="rightCol">
        <div class="section">
        <div class="media">
            <img src="Image/sql-injection.jpg" />
        </div>
        <h2>
          SECURITY
        </h2>
        <p>
          SQL injection is a code injection technique that exploits a security
          vulnerability occurring in the database layer of an application.
          The vulnerability is present when user input is either incorrectly filtered
          for string literal escape characters embedded in SQL statements or user
          input is not strongly typed and thereby unexpectedly executed.
          It is an instance of a more general class of vulnerabilities that can
          occur whenever one programming or scripting language is embedded inside another.
        </p>
      </div>

      <div class="section">
        <div class="media">
            <img src="Image/performance-monitors.gif" />
        </div>
        <h2>
          PERFORMANCE
        </h2>
        <p>
          Time for manipulating Database: Data Query: Time for selecting data from DB.
          Data Insert: Time for inserting data into DB. Data Update:
          Time for updating data from DBData Delete:
          Time for deleting from DB
        </p>
        <p>1) Time for accessing Web Page: It will suffer from the effect of programming
            structure.</p>
      </div>
    </div>
    <div style="clear:both"></div>
</asp:Content>
