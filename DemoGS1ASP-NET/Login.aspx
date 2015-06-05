<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DemoGS1ASP_NET.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #login-card {
            padding: 40px 40px;
        }


        #login-content {
            margin-top: 20px;
        }

            #login-content input[type="email"],
            #login-content input[type="password"] {
                direction: ltr;
                height: 44px;
                font-size: 16px;
            }

        #profile-img {
            max-width: 120px;
            max-height: 120px;
            margin-bottom: 10px;
        }

        .profile-name-card {
            font-size: 16px;
            font-weight: bold;
            text-align: center;
            margin: 10px 0 0;
            margin-top: 10px;
            margin-right: 0px;
            margin-bottom: 0px;
            margin-left: 0px;
            min-height: 1em;
        }

        #login-validations *[style*="inline"] {
            display: block !important;
        }
        #ContentPlaceHolder1_l_error_message,#login-validations *[style*="inline"]{
            color: #a94442;

        }

            #login-validations *[style*="inline"]:last-child {
                margin-bottom: 15px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div id="login-card" class="well well-sm">
                    <div class="text-center">
                        <img id="profile-img" class="img-circle" src="http://lorempixel.com/150/150/business">
                    </div>
                    <p id="profile-name" class="profile-name-card">GS1 Canada Login</p>
                    <div class="text-center">

                        <asp:Label ID="l_error_message" runat="server">asd</asp:Label>
                    </div>
                    <div id="login-content">

                        <div class="form-group">
                            <asp:TextBox ID="tb_email_input" runat="server" placeholder="Enter email" TextMode="Email" CssClass="form-control" required autofocus></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="tb_password_input" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password" required></asp:TextBox>

                        </div>
                        <div id="login-validations">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email is Required" ControlToValidate="tb_email_input" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is Required" ControlToValidate="tb_password_input" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_email_input" Display="Dynamic" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Please enter valid email address"></asp:RegularExpressionValidator>
                        </div>

                        <div class="text-right">
                            <asp:Button ID="bt_submit" runat="server" Text="Sign in" OnClick="bt_submit_Click" CssClass="btn btn-primary btn-block btn-signin" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="jsscripts" runat="server">
</asp:Content>
