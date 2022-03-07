<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Testing_calenderpicker.aspx.cs" Inherits="Practise_project.Testing_calenderpicker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="pickerdate.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#<%=txtcal.ClientID%>").datepicker({
                dateformate: "dd/mm/yy",
                showOn:"bith",
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">


        <div>
            <asp:TextBox ID="txtcal" runat="server"></asp:TextBox>
            
            </div>


        
    </form>
</body>
</html>
