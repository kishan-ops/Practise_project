<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration_form.aspx.cs" Inherits="Practise_project.Registration_form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <%--    <script type ="text/javascript">
        function Testme()
        {
            var val = Document.getElementById('<%=TxtFname.ClientID%>').value;
            if (!isNaN(val))
            {
                alert("Please don't enter numeric value");
                ctl.focus();
                return (false);
            }
        }
</script>--%>

    <style type="text/css" runat="server">
        *, *:before, *:after {
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }

        body {
            font-family: 'Nunito', sans-serif;
            color: #384047;
        }

        form {
            max-width: 300px;
            margin: 10px auto;
            padding: 10px 20px;
            background: #f4f7f8;
            border-radius: 8px;
        }

        h3 {
            margin: 0 0 30px 0;
            text-align: center;
        }

        input[type="text"],
        input[type="password"],
        input[type="date"],
        input[type="datetime"],
        input[type="email"],
        input[type="number"],
        input[type="search"],
        input[type="tel"],
        input[type="time"],
        input[type="url"],
        textarea,
        select {
            background: rgba(255,255,255,0.1);
            border: none;
            font-size: 16px;
            height: auto;
            margin: 0;
            outline: 0;
            padding: 15px;
            width: 100%;
            background-color: #e8eeef;
            color: #8a97a0;
            box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
            margin-bottom: 30px;
        }

        input[type="radio"],
        input[type="checkbox"] {
            margin: 0 4px 8px 0;
        }

        select {
            padding: 6px;
            height: 32px;
            border-radius: 2px;
        }

        Button {
            padding: 19px 39px 18px 39px;
            color: #3ac162;
            background-color: #c14b3a;
            font-size: 18px;
            text-align: center;
            font-style: normal;
            border-radius: 30px;
            width: 100%;
            border: 1px solid #3ac162;
            border-width: 1px 1px 3px;
            box-shadow: 0 -1px 0 rgba(255,255,255,0.1) inset;
            margin-bottom: 20px;
        }

        fieldset {
            margin-bottom: 30px;
            border: none;
        }

        legend {
            font-size: 1.4em;
            margin-bottom: 10px;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

            label.light {
                font-weight: 300;
                display: inline;
            }

        .number {
            background-color: #5fcf80;
            color: #fff;
            height: 30px;
            width: 30px;
            display: inline-block;
            font-size: 0.8em;
            margin-right: 4px;
            line-height: 30px;
            text-align: center;
            text-shadow: 0 1px 0 rgba(255,255,255,0.2);
            border-radius: 100%;
        }

        @media screen and (min-width: 480px) {

            form {
                max-width: 480px;
            }
        }
    </style>

</head>

<body>
    <form id="form" class="form" runat="server">
        <div>
            <%--                                                <asp:ScriptManager ID="sc1" runat="server"></asp:ScriptManager>--%>


            <fieldset>
                <h3>Registration Form</h3>
                <asp:Label CssClass="label" runat="server">First Name</asp:Label>
                <asp:TextBox ID="TxtFname" CssClass="text" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only allow text data"
                    ControlToValidate="TxtFname" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="requsername" ControlToValidate="TxtFname"
                    ErrorMessage="First name required" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                <br />
                <asp:Label CssClass="label" runat="server">Last Name</asp:Label>
                <asp:TextBox ID="txtlstname" CssClass="text" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Only allow text data"
                    ControlToValidate="txtlstname" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtlstname"
                    ErrorMessage="Last name required" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                <br />
                <asp:Label CssClass="label" runat="server">mail Id</asp:Label>
                <asp:TextBox ID="Txtmail" CssClass="text" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Txtmail"
                    ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                    Display="Dynamic" ErrorMessage="Invalid email address" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Txtmail"
                    ForeColor="Red" Display="Dynamic" ErrorMessage="Required" />

                <br />
                <asp:Label CssClass="label" runat="server">create Password</asp:Label>
                <asp:TextBox ID="Txtpwd" CssClass="text" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ControlToValidate="Txtpwd" ErrorMessage="This Field can not be blank." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:Label CssClass="label" runat="server">Confirm Password</asp:Label>
                <asp:TextBox ID="Txtcpwd" runat="server" CssClass="text" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server"
                    ControlToCompare="Txtpwd" ControlToValidate="Txtcpwd"
                    ErrorMessage="Password does not match." Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ControlToValidate="Txtcpwd" ErrorMessage="This Field can not be blank." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                

                <%--   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="Txtpwd"
                    ErrorMessage="Password required" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                <label cssclass="text" runat="server">Confirm Password</label>

                <asp:TextBox ID="Txtcpwd" runat="server" TextMode="Password"></asp:TextBox>

                <asp:Label CssClass="label" runat="server">Mobile Number</asp:Label>
                <asp:TextBox ID="txtmblnum" CssClass="text" runat="server"></asp:TextBox>


                <label cssclass="label" runat="server">City</label>

                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Text="Select City" Value="select" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="Hyderabad" Value="Hyderabad"></asp:ListItem>
                    <asp:ListItem Text="Vijaya Wada" Value="Vijaya Wada"></asp:ListItem>
                    <asp:ListItem Text="Bengalore" Value="Bengalore"></asp:ListItem>
                    <asp:ListItem Text="Mumbai" Value="Mumbai"></asp:ListItem>
                    <asp:ListItem Text="Delhi" Value="Delhi"></asp:ListItem>
                    <asp:ListItem Text="Mysore" Value="Mysore"></asp:ListItem>
                    <asp:ListItem Text="Hubli" Value="hubli"></asp:ListItem>
                    <asp:ListItem Text="Chennai" Value="Chennai"></asp:ListItem>
                </asp:DropDownList>--%>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="Button" OnClick="Button_Click" />



            </fieldset>
        </div>
    </form>

</body>

</html>
