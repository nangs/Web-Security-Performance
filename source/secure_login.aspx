<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="secure_login.aspx.cs" Inherits="Default11" Title="Secure Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                <br />
                <div>
                    <table align="" border="0" cellpadding="2" cellspacing="2" style="width: 315px">
                        <tr>
                            <td colspan="2">
                                <h4>
                                    <asp:Label ID="lbl_Default_Login_Page" runat="server" Text="Login Information"></asp:Label>
                                </h4>
                            </td>
                        </tr>
                        <tr>
                            <td width="40%">
                                <asp:Label ID="Label1" runat="server" AssociatedControlID="txtUserName" 
                                    CssClass="regularText" Text="Login ID :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtUserName" runat="server" CssClass="regularText" 
                                    MaxLength="50" Width="125px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtUserName" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" AssociatedControlID="txtPassword" 
                                    CssClass="regularText" Text="Password :"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="regularText" 
                                    MaxLength="25" TextMode="Password" Width="125px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtPassword" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:Label ID="lblDisplayErr" runat="server" CssClass="labelError" Text="" />
                            </td>
                        </tr>
                        <tr align="center">
                            <td>
                                &nbsp;</td>
                            <td align="left">
                                <asp:Button ID="btnLogin" runat="server" CssClass="button" 
                                    OnClick="btnLogin_Click" Text="Login" />
                                &nbsp;
                                <asp:Button ID="btnClear" runat="server" CausesValidation="false" 
                                    CssClass="button" OnClick="btnClear_Click" Text="Clear" />
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="left" colspan="2">
                                <asp:Label ID="Label3" runat="server" Text="."></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <asp:Label ID="lblCookies" runat="server" CssClass="regularText" Text=""></asp:Label>
                </div>

</asp:Content>

