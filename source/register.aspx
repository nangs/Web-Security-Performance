<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="Default3" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
     
    p.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
    <table class="style15">
        <tr>
            <td>
                <table class="style16">
                    <tr>
                        <td class="style18">
                            &nbsp;FirstName:</td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server" Height="19px" Width="161px"></asp:TextBox>
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
                            <asp:TextBox ID="txtlastname" runat="server" Height="16px" Width="161px"></asp:TextBox>
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
                            <asp:TextBox ID="txtusername" runat="server" Height="16px" Width="161px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtusername" ErrorMessage="Username is empty"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            <p class="MsoNormal">
                                Designation
                                                                                    </p>
                                                                                </td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem>Manager</asp:ListItem>
                                <asp:ListItem>Employee
                                </asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            Password:</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="16px" TextMode="Password" 
                                Width="158px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="TextBox1" ErrorMessage="Password  is empty"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            Retype Password:</td>
                        <td>
                            <asp:TextBox ID="txtrepassword" runat="server" Height="16px" 
                                TextMode="Password" Width="161px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txtrepassword" ErrorMessage="Retype Password  is empty"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="TextBox1" ControlToValidate="txtrepassword" 
                                ErrorMessage="Cheak Password"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            Email ID:
                        </td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server" Height="16px" Width="161px"></asp:TextBox>
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
                            <asp:TextBox ID="txtbod" runat="server" Height="16px" Width="161px"></asp:TextBox>
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
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>FeMale</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            Address</td>
                        <td>
                            <asp:TextBox ID="txtaddress" runat="server" Height="18px" TextMode="MultiLine" 
                                Width="165px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="txtaddress" ErrorMessage="Address is empty"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            MobileNo:
                        </td>
                        <td>
                            <asp:TextBox ID="txtmobileno" runat="server" Height="16px" Width="161px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="txtmobileno" ErrorMessage="Mobile No. is empty"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator3" runat="server" 
                                ControlToValidate="txtmobileno" ErrorMessage="Enter valid no." 
                                MaximumValue="9999999999" MinimumValue="1000000000"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            Sequirty Question</td>
                        <td>
                            <asp:DropDownList ID="txtQuestion" runat="server" Height="16px" Width="208px">
                                <asp:ListItem> -Select Question-</asp:ListItem>
                                <asp:ListItem Value="What is your favorite Uncle">What is your favorite Uncle?</asp:ListItem>
                                <asp:ListItem>Who is your favorite Cricketer?</asp:ListItem>
                                <asp:ListItem>What is your First mobile number?</asp:ListItem>
                                <asp:ListItem>What is your favorite Movie?</asp:ListItem>
                                <asp:ListItem>Who is your favorite Book?</asp:ListItem>
                                <asp:ListItem>What is your Pet Animal?</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            Answer</td>
                        <td>
                            <asp:TextBox ID="txtanswer" runat="server" Height="16px" Width="161px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="txtanswer" ErrorMessage="Answer Field  is empty"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            &nbsp;</td>
                        <td>
                            <b __designer:mapid="6f">
                            <asp:Button ID="Button1" runat="server" Height="27px" onclick="Button1_Click" 
                                style="font-weight: 700" Text="Submit" Width="101px" />
                            &nbsp;
                            </b>
                            <asp:Button ID="Button2" runat="server" Height="27px" onclick="Button2_Click" 
                                style="font-weight: 700" Text="Cleare" Width="101px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

