<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CriarUsuario.aspx.cs" Inherits="WebFormsEstudo.Usuarios.CriarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>Criar usuário</h2>
    </div>
    <div class="row-no-gutters">
        <asp:Panel class="col-xs-offset-1" runat="server" visible="true" ID="pnlCadastro">
            <div class="row-no-gutters">
                <p class="lead">Usuário:</p>
                <asp:TextBox ID="txtUsuario" runat="server" ValidationGroup="vlgLogin"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLogin" runat="server" ErrorMessage="Informe o Login do usuário" ControlToValidate="txtUsuario" SetFocusOnError="True" CssClass="text-danger" ValidationGroup="vlgLogin" Display="None"></asp:RequiredFieldValidator>
            </div>
            <div class="row-no-gutters">
                <p class="lead">E-mail:</p>
                <asp:TextBox ID="txtEmail" runat="server" ValidationGroup="vlgEmail"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Informe o Email do usuário" ControlToValidate="txtEmail" SetFocusOnError="True" CssClass="text-danger" ValidationGroup="vlgLogin" Display="None"></asp:RequiredFieldValidator>
            </div>
            <div class="row-no-gutters">
                <p class="lead">Senha:</p>
                <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" ValidationGroup="vlgLogin"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAno" runat="server" ErrorMessage="Informe a senha do usuário" ControlToValidate="txtSenha" SetFocusOnError="True" CssClass="text-danger" ValidationGroup="vlgLogin" Display="None"></asp:RequiredFieldValidator>
            </div>
            <br />
            <div class="row-no-gutters">
                <asp:ValidationSummary ID="vlsLogin" runat="server" ValidationGroup="vlgLogin" CssClass="text-danger" />
            </div>
            <br />
            <div class="row-no-gutters">
                 
                 <div class="col-xs-offset-0">
                     <asp:Button class="btn btn-primary btn-lg" ID="btnCadastrar" Text="Cadastrar" runat="server" OnClick="btnCadastrar_Click" ValidationGroup="vlgFilme" />
                 </div>
            </div>
            <br />
        </asp:Panel>
        <br />
        <asp:Panel class="col-xs-offset-1"  runat="server" visible="false" ID="pnlResultado">
            <div class="row-no-gutters">
                <asp:Label ID="lblResultado" runat="server" ForeColor="Red"></asp:Label>
            </div>
            <br />
            <div class="row-no-gutters">
                 
                 <div class="col-xs-offset-0">
                     <asp:Button class="btn btn-primary btn-lg" ID="btnVoltar" Text="Voltar" runat="server" OnClick="btnVoltar_Click" />
                 </div>
            </div>
        </asp:Panel>
        <br />
    </div>

</asp:Content>
