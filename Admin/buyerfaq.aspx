<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="buyerfaq.aspx.cs" Inherits="Admin_Default4" %>

<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
    <p>
        <br />
        <table class="nav-justified">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server" Height="628px">
                    </CKEditor:CKEditorControl>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 73px">
                </td>
                <td style="height: 73px">
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                </td>
                <td style="height: 73px">
                </td>
            </tr>
        </table>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    </form>

</asp:Content>

