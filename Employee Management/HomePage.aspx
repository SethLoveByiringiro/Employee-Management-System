<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Employee_Management.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Employee Details"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" Text="SSN"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="ssnBox" runat="server" CssClass="col-md-offset-0" Font-Size="Small" Width="191px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" Text="Full Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="fullNameBox" runat="server" Font-Size="Small" Width="191px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Small" Text="Department"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="deptBox" runat="server">
                <asp:ListItem>Finance</asp:ListItem>
                <asp:ListItem>HR</asp:ListItem>
                <asp:ListItem>IT</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Small" Text="Salary"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="salaryBox" runat="server" Font-Size="Small" Width="191px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Small" Text="Index"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="indexBox" runat="server" Font-Size="Small" Width="191px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="insertBTN" runat="server" OnClick="insertBTN_Click" Text="Insert" Width="86px" />
            <asp:Button ID="updateBTN" runat="server" OnClick="updateBTN_Click" Text="Update" />
        </td>
        <td>
            <asp:Button ID="deleteBTN" runat="server" OnClick="deleteBTN_Click" Text="Delete" />
            <asp:Button ID="displayBTN" runat="server" OnClick="displayBTN_Click1" Text="Display" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </td>
        <td>&nbsp;</td>
    </tr>
</table>
<br />
<asp:GridView ID="GridView1" runat="server" Width="1011px">
</asp:GridView>
<br />
</asp:Content>
