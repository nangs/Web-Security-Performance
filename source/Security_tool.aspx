<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Security_tool.aspx.cs" Inherits="Default5" Title="Security Tool" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
                <table>
                    <tr>
                        <td>
                            <b>Enter your Query</b></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtInputSQL" runat="server" Height="54px" Width="747px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <b>Query Result By Tool</b></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtOutput" runat="server" Height="51px" 
                                style="margin-bottom: 0px" Width="747px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <b>Query Result By Server Database</b></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtOutput0" runat="server" Height="51px" 
                                style="margin-bottom: 0px" Width="747px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Height="26px" onclick="Button1_Click" 
                                Text="Execute" Width="76px" style="font-weight: 700" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" Height="130px" Width="746px" 
                                BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                                CellPadding="3" CellSpacing="1" GridLines="None">
                                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>

</asp:Content>

