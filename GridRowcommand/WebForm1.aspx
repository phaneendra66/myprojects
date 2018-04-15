<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="GridRowcommand.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="style1">
            <tr>
                <td colspan="2">
    <asp:GridView ID="Gridv1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" ShowFooter="True" GridLines="None" 
                        onrowcommand="Gridv1_RowCommand" AllowPaging="True" 
                        onpageindexchanging="Gridv1_PageIndexChanging" PageSize="4">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
        <Columns>
        <asp:TemplateField HeaderText="Eno">
        <ItemTemplate>
        <asp:Label ID="Label1" runat="server" Text='<%#Bind("eno")%>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
        <asp:TextBox ID="TextBox1" runat="server" Text='<%#Bind("eno")%>'></asp:TextBox>
        </EditItemTemplate>
        <FooterTemplate>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Ename">
        <ItemTemplate>
        <asp:Label ID="Label2" runat="server" Text='<%#Bind("ename")%>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
        <asp:TextBox ID="TextBox2" runat="server" Text='<%#Bind("ename")%>'></asp:TextBox>
        </EditItemTemplate>
        <FooterTemplate>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Salary">
        <ItemTemplate>
        <asp:Label ID="Label3" runat="server" Text='<%#Bind("salary")%>'></asp:Label>
        </ItemTemplate>
        <EditItemTemplate>
        <asp:TextBox ID="TextBox3" runat="server" Text='<%#Bind("salary")%>'></asp:TextBox>
        </EditItemTemplate>
        <FooterTemplate>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </FooterTemplate>
        </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" 
                        CommandName="cmddelete"  CommandArgument="<%#((GridViewRow)Container).RowIndex%>" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
                <FooterTemplate>
                 <asp:Button ID="btnInsert" runat="server" Text="Insert" Height="28px" 
                        onclick="btnInsert_Click" />
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="false" 
                        CommandName="cmdselect"  CommandArgument="<%#((GridViewRow)Container).RowIndex%>" Text="Select"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    Eno 
                </td>
                <td>
                <asp:Label ID="Lbleno" runat="server" ></asp:Label>
                  </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    Ename
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    Salary</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Cancel" onclick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
