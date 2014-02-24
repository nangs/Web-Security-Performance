<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="details.aspx.cs" Inherits="Default7" Title="User Details" %>
<script runat="server">
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <table align="center">
        <tr>
            <td>
                &nbsp;FirstName:
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Height="19px" Width="161px" ReadOnly="True"
                    OnTextChanged="txtname_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                    ErrorMessage="First Name is empty"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtname"
                    ErrorMessage="Enter valid Character" MaximumValue="z" MinimumValue="A"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>
                LastName
            </td>
            <td>
                <asp:TextBox ID="txtlastname" runat="server" Height="16px" Width="161px" ReadOnly="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname"
                    ErrorMessage="Last Name is empty"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtlastname"
                    ErrorMessage="Enter valid Character" MaximumValue="z" MinimumValue="A"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>
                UserName:
            </td>
            <td>
                <asp:TextBox ID="txtusername" runat="server" Height="16px" Width="161px" ReadOnly="True"
                    OnTextChanged="txtusername_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtusername"
                    ErrorMessage="Username is empty"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Email ID:
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="16px" Width="161px" ReadOnly="True"
                    OnTextChanged="txtemail_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtemail"
                    ErrorMessage="EmailID is empty"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                    ErrorMessage="Enter Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                Birth Date
            </td>
            <td>
                <asp:TextBox ID="txtbod" runat="server" Height="16px" Width="161px" ReadOnly="True"
                    OnTextChanged="txtbod_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtbod"
                    ErrorMessage="Birth Date is empty"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="txtbod"
                    ErrorMessage="Enter Valid Date" MaximumValue="12/12/2099" MinimumValue="1/1/1901"
                    Type="Date"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>
                Gender
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>FeMale</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Address
            </td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server" Height="18px" TextMode="MultiLine" Width="165px"
                    OnTextChanged="txtaddress_TextChanged" ReadOnly="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtaddress"
                    ErrorMessage="Address is empty"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                MobileNo:
            </td>
            <td>
                <asp:TextBox ID="txtmobileno" runat="server" Height="16px" Width="161px" ReadOnly="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtmobileno"
                    ErrorMessage="Mobile No. is empty"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtmobileno"
                    ErrorMessage="Enter valid no." MaximumValue="9999999999" MinimumValue="1000000000"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
