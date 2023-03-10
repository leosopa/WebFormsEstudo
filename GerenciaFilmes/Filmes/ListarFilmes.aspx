<%@ Page Title="Listar filmes" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarFilmes.aspx.cs" Inherits="GerenciaFilmes.Filmes.ListarFilmes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>Lista de Filmes</h2>
        <p> Aqui você encontra seus filmes cadastrados e pode editá-los ou excluí-los:</p>
        
    </div>
    <div class="row-no-gutters">
        <asp:GridView ID="gdvFilmes" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" ForeColor="#333333" OnRowEditing="gdvFilmes_RowEditing" OnRowUpdating="gdvFilmes_RowUpdating" OnRowDeleting="gdvFilmes_RowDeleting" OnRowCancelingEdit="gdvFilmes_RowCancelingEdit">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775"/>
            <Columns>
                <asp:TemplateField HeaderText="Titulo">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtTitulo" runat="server" Text='<%# Bind("Titulo") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblTitulo" runat="server" Text='<%# Bind("Titulo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Diretor">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtDiretor" runat="server" Text='<%# Bind("Diretor") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblDiretor" runat="server" Text='<%# Bind("Diretor") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ano" ControlStyle-Width="100px" >
                    <EditItemTemplate>
                        <asp:TextBox ID="txtAno" runat="server" Text='<%# Bind("Ano") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblAno" runat="server" Text='<%# Bind("Ano") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="IMDB">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtUrl" runat="server" Text='<%# Bind("URL") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblUrl" runat="server" Text='<%# Bind("URL") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Editar Filme">
                    <ItemTemplate>  
                        <asp:Button ID="btnEditar" runat="server" Text="Editar" CommandName="Edit" CssClass="btn btn-info btn-sm" />  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Button ID="btnAtualizar" runat="server" Text="Atualizar" CommandName="Update"/>  
                        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CommandName="Cancel"/>  
                    </EditItemTemplate>  
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Remover Filme">
               <ItemTemplate>
                    <asp:LinkButton ID="DeleteButton"
                            runat="server"
                            CssClass="btn btn-warning btn-sm"
                            CommandName="Delete" 
                            Text="Remover"
                            Font-Bold="true"/>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField InsertVisible="False" Visible="False">
                    <ItemTemplate>
                        <asp:Label ID="lblId" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </div>

</asp:Content>
