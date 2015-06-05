<%@ Page Title="" Language="C#" MasterPageFile="~/Backend.Master" AutoEventWireup="true" CodeBehind="Backend_home.aspx.cs" Inherits="DemoGS1ASP_NET.backend_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <div class="row">
            <div class="col-md-12">
                <legend><asp:Label ID="l_company_name" runat="server"></asp:Label></legend>
                <asp:Repeater ID="r_users" runat="server" OnItemCommand="r_users_ItemCommand">
                    <HeaderTemplate>
                        <div>
                            <table id="users" class="table table-bordered table-condensed table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col" style="width: 1px"></th>
                                        <th>
                                            <asp:Label ID="l_user_email" runat="server" Text="Email"></asp:Label>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:CheckBox ID="cb_user_selected" runat="server" />
                            </td>
                            <td>
                                <%# DataBinder.Eval(Container.DataItem, "Email") %>
                            </td>
                        </tr>
                    </ItemTemplate>
                   
                    <FooterTemplate>
                        </tbody> 
                        </table>
                         </div>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="jsscripts" runat="server">
</asp:Content>
