<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="griddata.aspx.cs" Inherits="Practise_project.griddata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server">Product Name</asp:Label>
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            <asp:Label runat="server">Product Date</asp:Label>
            <asp:TextBox ID="txtpdate" runat="server" ></asp:TextBox>
            <asp:Button ID="btn" Text="Submit" runat="server" OnClick="btn_Click" />

        </div>
    </form>
</body>
</html>
