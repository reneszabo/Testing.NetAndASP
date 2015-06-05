<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DemoGS1ASP_NET.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        <div class="row">
            <aside class="col-md-3">
               <div class="panel panel-default">
                   <div class="panel-heading">
                       LEFT ASIDE
                   </div>
                   <div class="panel-body">

                   </div>
               </div>
            </aside>
            <div class="col-md-6">
               <div class="panel panel-default">
                   <div class="panel-heading">
                       LANDING PAGE
                   </div>
                   <div class="panel-body">

                   </div>
               </div>
            </div>
             <aside class="col-md-3">
               <div class="panel panel-default">
                   <div class="panel-heading">
                       RIGHT ASIDE
                   </div>
                   <div class="panel-body">

                   </div>
               </div>
            </aside>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="jsscripts" runat="server">
    <script type="text/javascript">

    </script>
</asp:Content>
