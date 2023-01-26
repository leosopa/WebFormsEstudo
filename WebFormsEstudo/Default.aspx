<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormsEstudo._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>Bem Vindo</h2>
        <p class="lead">Este é um projeto simples de CRUD para testar meus conhecimentos com WebForms e OracleDB.</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Cadastre seus filmes favoritos!</h2>
            <p>
                Clique no link abaixo para inserir na base de dados seus filmes favoritos!
            </p>
            <p>
                <a class="btn btn-default" href="Filmes/CadastrarFilme.aspx">Inserir filmes! &raquo;</a>
            </p>
        </div>
    </div>
     <div class="row">
        <div class="col-md-4">
            <h2>Veja e edite aqui seus filmes favoritos!</h2>
            <p>
                Clique no link abaixo para listar, excluir ou editar seus filmes favoritos!
            </p>
            <p>
                <a class="btn btn-default" href="Filmes/ListarFilmes.aspx">Listar filmes! &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
