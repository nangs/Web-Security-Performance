<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="encrypted_details.aspx.cs" Inherits="Default14" Title="Encrypted User Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            width: 100%;
        }
        .style16
        {
            height: 321px;
            width: 745px;
        }
        .style18
        {
            width: 201px;
            font-weight: bold;
            text-align: right;
        }
        .style19
        {
            width: 201px;
            font-weight: bold;
            text-align: right;
            height: 45px;
        }
        .style20
        {
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style15">
        <tr>
            <td>
            <table class="style15">
        <tr>
            <td>
                <table class="style16">
                    <tr>
                        <td class="style18">
                            &nbsp;FirstName:</td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server" Height="19px" Width="161px" 
                                ReadOnly="True" ontextchanged="txtname_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtname" ErrorMessage="First Name is empty"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                ControlToValidate="txtname" ErrorMessage="Enter valid Character" 
                                MaximumValue="z" MinimumValue="A"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            LastName</td>
                        <td>
                            <asp:TextBox ID="txtlastname" runat="server" Height="16px" Width="161px" 
                                ReadOnly="True" ontextchanged="txtlastname_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtname" ErrorMessage="Last Name is empty"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator2" runat="server" 
                                ControlToValidate="txtlastname" ErrorMessage="Enter valid Character" 
                                MaximumValue="z" MinimumValue="A"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            UserName:</td>
                        <td>
                            <asp:TextBox ID="txtusername" runat="server" Height="16px" Width="161px" 
                                ReadOnly="True" ontextchanged="txtusername_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtusername" ErrorMessage="Username is empty"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            Email ID:
                        </td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server" Height="16px" Width="161px" 
                                ReadOnly="True" ontextchanged="txtemail_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="txtemail" ErrorMessage="EmailID is empty"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtemail" ErrorMessage="Enter Valid Email" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            Birth Date</td>
                        <td>
                            <asp:TextBox ID="txtbod" runat="server" Height="16px" Width="161px" 
                                ReadOnly="True" ontextchanged="txtbod_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="txtbod" ErrorMessage="Birth Date is empty"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator4" runat="server" 
                                ControlToValidate="txtbod" ErrorMessage="Enter Valid Date" 
                                MaximumValue="12/12/2099" MinimumValue="1/1/1901" Type="Date"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            Gender</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged" Height="16px">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>FeMale</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style19">
                            Address</td>
                        <td class="style20">
                            <asp:TextBox ID="txtaddress" runat="server" Height="18px" TextMode="MultiLine" 
                                Width="165px" ontextchanged="txtaddress_TextChanged" ReadOnly="True"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="txtaddress" ErrorMessage="Address is empty"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            MobileNo:
                        </td>
                        <td>
                            <asp:TextBox ID="txtmobileno" runat="server" Height="16px" Width="161px" 
                                ReadOnly="True" ontextchanged="txtmobileno_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="txtmobileno" ErrorMessage="Mobile No. is empty"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator3" runat="server" 
                                ControlToValidate="txtmobileno" ErrorMessage="Enter valid no." 
                                MaximumValue="9999999999" MinimumValue="1000000000"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
            </td>
        </tr>
    </table>
</asp:Content>

