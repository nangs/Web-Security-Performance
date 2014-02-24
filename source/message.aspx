<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="message.aspx.cs" Inherits="Default15" Title="Message For Employees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <br />
                <table >
                    <tr>
                        <td>
                            Message Id</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="275px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Message For Employee</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="100px" Width="277px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Update" />
&nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Delete" />
                        </td>
                    </tr>
                </table>

</asp:Content>

