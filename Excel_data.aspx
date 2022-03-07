<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Excel_data.aspx.cs" Inherits="Practise_project.Excel_data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>abcdefg</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <%-- <p>Excel Data</p>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="btnImport" runat="server" Text="Import" OnClick="btnImportExcel" />
            <hr />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />--%>   

         <asp:GridView ID="grd_data" runat="server" OnRowCommand="grd_data_RowCommand" AutoGenerateColumns ="true" ></asp:GridView>


         <%--   <asp:GridView ID="grd_student" runat="server"
                OnRowDataBound="grd_student_RowDataBound" >
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            Sr.#
                        </HeaderTemplate>
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                        <ItemStyle Width="40px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:BoundField DataField="DateOfBirth" HeaderText="Date Of Birth" Visible="false"></asp:BoundField>
                    <asp:BoundField DataField="Address" HeaderText="Address" Visible="false"></asp:BoundField>
                    <asp:BoundField DataField="Qualification" HeaderText="Qualification" Visible="false"></asp:BoundField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                        </HeaderTemplate>
                      <%--  <ItemTemplate>
                            <asp:HyperLink ID="hyp_exam" runat="server" Text="Update Practical" CssClass="btn btn-primary"></asp:HyperLink>
                        </ItemTemplate>--%>
                  <%--  </asp:TemplateField>
                </Columns>
            </asp:GridView>--%>--%>
        </div>
    </form>
</body>
</html>



