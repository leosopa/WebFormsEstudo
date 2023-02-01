<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastrarFilme.aspx.cs" Inherits="WebFormsEstudo.Cadastros.Filme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h2>Inserir Filme</h2>
    </div>
    <div class="row-no-gutters">
        <asp:Panel class="col-xs-offset-1" runat="server" visible="true" ID="pnlCadastro">
            <div class="row-no-gutters">
                <p class="lead">Titulo:</p>
                <asp:TextBox ID="txtTitulo" runat="server" ValidationGroup="vlgFilme"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTitulo" runat="server" ErrorMessage="Informe o Titulo do filme" ControlToValidate="txtTitulo" SetFocusOnError="True" CssClass="text-danger" ValidationGroup="vlgFilme" Display="None"></asp:RequiredFieldValidator>
            </div>
            <div class="row-no-gutters">
                <p class="lead">Diretor:</p>
                <asp:TextBox ID="txtDiretor" runat="server" ValidationGroup="vlgFilme"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDiretor" runat="server" ErrorMessage="Informe o Diretor do filme" ControlToValidate="txtDiretor" SetFocusOnError="True" CssClass="text-danger" ValidationGroup="vlgFilme" Display="None"></asp:RequiredFieldValidator>
            </div>
            <div class="row-no-gutters">
                <p class="lead">Ano:</p>
                <asp:TextBox ID="txtAno" runat="server" TextMode="Number" MaxLength="4" ValidationGroup="vlgFilme"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAno" runat="server" ErrorMessage="Informe o Ano do filme" ControlToValidate="txtAno" SetFocusOnError="True" CssClass="text-danger" ValidationGroup="vlgFilme" Display="None"></asp:RequiredFieldValidator>
            </div>
            <div class="row-no-gutters">
                <p class="lead">Link IMDB:</p>
                <asp:TextBox ID="txtUrl" runat="server" TextMode="Url" ValidationGroup="vlgFilme"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvImdb" runat="server" ErrorMessage="Informe o Link IMDB" ControlToValidate="txtUrl" SetFocusOnError="True" CssClass="text-danger" ValidationGroup="vlgFilme" Display="None"></asp:RequiredFieldValidator>
            </div>
            <br />
            <div class="row-no-gutters">
                <asp:ValidationSummary ID="vlsFilme" runat="server" ValidationGroup="vlgFilme" CssClass="text-danger" />
            </div>
            <br />
            <div class="row-no-gutters">
                 
                 <div class="col-xs-offset-0">
                     <asp:Button class="btn btn-primary btn-lg" ID="btnCadastrar" Text="Inserir" runat="server" OnClick="btnCadastrar_Click" ValidationGroup="vlgFilme" />
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
