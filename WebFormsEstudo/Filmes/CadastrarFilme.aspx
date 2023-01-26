<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastrarFilme.aspx.cs" Inherits="WebFormsEstudo.Cadastros.Filme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h2>Inserir Filme</h2>
    </div>
    <div class="row-no-gutters">
        <div class="col-md-3">
            <p class="lead">Titulo:</p>
            <asp:TextBox ID="txtTitulo" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-3">
            <p class="lead">Diretor:</p>
            <asp:TextBox ID="txtDiretor" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-3">
            <p class="lead">Ano:</p>
            <asp:TextBox ID="txtAno" runat="server" TextMode="Number" MaxLength="4"></asp:TextBox>
        </div>
        <div class="col-md-3">
            <p class="lead">Link IMDB:</p>
            <asp:TextBox ID="txtUrl" runat="server" TextMode="Url"></asp:TextBox>
        </div>
        <br />
        <br />
        <p>&nbsp</p>
        <div class="col-md-4">
            <asp:Button class="btn btn-primary btn-lg" ID="btnCadastrar" Text="Inserir" runat="server" OnClick="btnCadastrar_Click" />
        </div>
        <br />
        <div class="col-md-3">
            <asp:Label ID="lblResultado" runat="server" ForeColor="Red"></asp:Label>
        </div>
        <br />
    </div>
</asp:Content>
