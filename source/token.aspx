<%@ Page Title="Security Token" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="token.aspx.cs" Inherits="token" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">
        .td1
        {
            width:160px;
            text-align:center;
        }
        
        .td2
        {
            width:160px;
            text-align:center;
            border-left:solid 1px #444444;
            border-right:solid 1px #444444;
        }
        
        .td3
        {
            width:160px;
            text-align:center;
        }
        
        .Ulike
        {
            line-height:30px;
        }
        
        .row td
        {
            
        }
        
        .ClickBtn
        {
            height:150px;
            width:145px;
            display:block;
            text-align:center;
            padding:5px;
            text-decoration:none;
            border:solid 1px #fff;
            color:#222;
        }
        
        .ClickBtn:hover
        {
            border-color:#222;
        }
        
        .ClickBtn img
        {
            border:none;
        }
    </style>
    <div class="aboutbox">
        <table>
            <tr>
                <td>
                    <a href="xml_encryption_client.aspx?token=<%= token_id %>" class="ClickBtn">
                        <img alt="" src="images/xmlClient.png" />
                        <span>Xml Encryption Client</span>
                    </a>
                </td>
                <td>
                    <a href="xml_encryption_server.aspx?token=<%= token_id %>" class="ClickBtn">
                        <img alt="" src="images/xmlServer.png" />
                        <span>Xml Encryption Server</span>
                    </a>
                </td>
                <td>
                    <a href="signature_client.aspx?token=<%= token_id %>" class="ClickBtn">
                        <img alt="" src="images/SIGNATURE.png" />
                        <span>Digital Signature Client</span>
                    </a>
                </td>
                <td>
                    <a href="signature_server.aspx?token=<%= token_id %>" class="ClickBtn">
                        <img alt="" src="images/signature_server.png" />
                        <span>Digital Signature Server</span>
                    </a>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

