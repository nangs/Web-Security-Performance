<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="employee.aspx.cs" Inherits="Default13" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <table>
        <tr>
            <td style="background-color: #D2D2D2">
                <table>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Large"
                                Font-Underline="False" ForeColor="Black" Style="text-align: center" NavigateUrl="~/employee.aspx">YOUR 
                                    PROFILE</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Size="Large"
                                Font-Underline="False" ForeColor="Black" Style="text-align: center" NavigateUrl="~/Security_tool.aspx">SECURITY TOOL</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Size="Large"
                                Font-Underline="False" ForeColor="Black" Style="text-align: center" NavigateUrl="~/performance_tool.aspx">PERFORMANCE TOOL</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" Font-Size="Large"
                                Font-Underline="False" ForeColor="Black" Style="text-align: center" NavigateUrl="~/traditional_login.aspx">TRADITIONAL LOGIN </asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink6" runat="server" Font-Bold="True" Font-Size="Large"
                                Font-Underline="False" ForeColor="Black" Style="text-align: center" NavigateUrl="~/secure_login.aspx">SECURE LOGIN</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink7" runat="server" Font-Bold="True" Font-Size="Large"
                                Font-Underline="False" ForeColor="Black" Style="text-align: center" NavigateUrl="~/cryptography.aspx">CRYPTOGRAPHIC</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink8" runat="server" Font-Bold="True" Font-Size="Large"
                                Font-Underline="False" ForeColor="Black" Style="text-align: center" NavigateUrl="~/JavaScriptFunctionInjection.aspx">CROSSSITE SCRIPTING</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink11" runat="server" Font-Bold="True" Font-Size="Large"
                                Font-Underline="False" ForeColor="Black" Style="text-align: center" NavigateUrl="~/token.aspx">SECURITY TOKEN</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Size="Large"
                                Font-Underline="False" ForeColor="Black" Style="text-align: center" NavigateUrl="~/logout.aspx">LOGOUT</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                    OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
