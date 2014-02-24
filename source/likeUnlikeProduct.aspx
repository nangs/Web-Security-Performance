<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="likeUnlikeProduct.aspx.cs" Inherits="voteForProduct" Title="Like/Unlike" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="pnlMain" runat="server">
        <h2 style="font-family:Verdana; font-size:18px; color:Green; text-align:center;">Total Likes For This Product : <%= total_like %></h2>
        <h2 style="font-family:Verdana; font-size:14px; color:Red; text-align:center;">Total Unlikes For This Product : <%= total_unlike %></h2>
    </asp:Panel>
</asp:Content>
