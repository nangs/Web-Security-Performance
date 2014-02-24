<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="feedback.aspx.cs" Inherits="Default4" Title="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<style type="text/css">
        .td1
        {
            width:110px;
            height:27px;
            text-align:right;
            padding-right:5px;
        }
        
        .td2
        {
            width:270px;
            height:27px;
        }
        
        .td3
        {
            width:200px;
            height:27px;
        }
    </style>
    <div class="feedbackbox">
        <h2 style="margin-left: 20px;">
            Feedback</h2>
        <table border="0" style="border-collapse: collapse; width: 600px; margin-left: 120px;
            border: solid 0px #000;">
            <tr>
                <td class="td1">
                    <b>Name<span class="star">*</span></b>
                </td>
                <td class="td2">
                    <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td class="td3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="Enter First Name" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="Enter Valid Character" MaximumValue="z" MinimumValue="A" 
                        CssClass="error" Display="Dynamic"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="td1">
                    <b>Email<span class="star">*</span></b>
                </td>
                <td class="td2">
                    <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td class="td3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="Enter  EmailID" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="Enter Valid Email" CssClass="error" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        Display="Dynamic"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="td1">
                    <b>Your Feedback<span class="star">*</span></b>
                </td>
                <td class="td2">
                    <asp:TextBox ID="TextBox3" runat="server" Height="68px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                    <b>maximum 600 character</b>
                </td>
                <td class="td3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox3"
                        ErrorMessage="Enter Your Feedback" CssClass="error"
                        Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="td1">
                </td>
                <td class="td2">
                    <asp:Button ID="Button1" runat="server" Height="28px" Style="font-weight: 700" Text="Submit"
                        Width="69px" OnClick="Button1_Click" />
                </td>
                <td class="td3">
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
