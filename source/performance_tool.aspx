<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="performance_tool.aspx.cs" Inherits="Default8" Title="Performance Tool" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <table class="style16">
        <tr>
            <td class="style17">
                <b style="text-align: center">Select Name Of Database</b>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                    Width="162px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button4"
                    runat="server" Height="27px" OnClick="Button4_Click" Style="font-weight: 700"
                    Text="Show Database" Width="143px" />
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style17">
                <b style="text-align: center">Select Name Of Table</b>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="162px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="font-weight: 700"
                    Text="Show Tables" Width="147px" />
            </td>
        </tr>
        <tr>
            <td class="style17">
                <b style="text-align: center">Select ColumnName </b>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="162px">
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Height="24px" OnClick="Button2_Click" Style="font-weight: 700"
                    Text="Show Column" Width="149px" />
            </td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style18">
                Enter Your Query
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="71px" Width="535px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style18">
                Message
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="16px" Width="529px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Height="23px" OnClick="Button3_Click" Style="font-weight: 700"
                    Text="Execute" Width="72px" />
            </td>
        </tr>
        <tr>
            <td class="style18">
                Total Execution Period<br />
                (ISPWAD)</td>
            <td>
                Total Execution Period<br />
                (Other)</td>
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:TextBox ID="txtISPWAD" runat="server" Height="25px" Width="112px"></asp:TextBox>
                ms
            </td>
            <td>
                <asp:TextBox ID="txtOther" runat="server" Height="25px" Width="112px"></asp:TextBox>
                ms
            </td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999"
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
