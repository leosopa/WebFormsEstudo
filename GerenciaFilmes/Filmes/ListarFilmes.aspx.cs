using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VideoBusinessLayer.DTO;

namespace GerenciaFilmes.Filmes
{
    public partial class ListarFilmes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PreencherFilmes();
            }
        }

        protected void gdvFilmes_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gdvFilmes.EditIndex = e.NewEditIndex;
            PreencherFilmes();
        }

        private void PreencherFilmes()
        {
            gdvFilmes.DataSource = new VideoBusinessLayer.Business.Filme().Listar();
            gdvFilmes.DataBind();
        }

        protected void gdvFilmes_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            FilmeDTO filme = new FilmeDTO();

            filme.Titulo = ((TextBox)gdvFilmes.Rows[e.RowIndex].FindControl("txtTitulo")).Text;
            filme.Diretor = ((TextBox)gdvFilmes.Rows[e.RowIndex].FindControl("txtDiretor")).Text;
            filme.Ano = int.Parse(((TextBox)gdvFilmes.Rows[e.RowIndex].FindControl("txtAno")).Text);
            filme.URL = ((TextBox)gdvFilmes.Rows[e.RowIndex].FindControl("txtUrl")).Text;
            filme.Id = int.Parse(((Label)gdvFilmes.Rows[e.RowIndex].FindControl("lblId")).Text);

            new VideoBusinessLayer.Business.Filme().Atualizar(filme);

            gdvFilmes.EditIndex = -1;
            PreencherFilmes();
        }

        protected void gdvFilmes_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int idFilme = int.Parse(((Label)gdvFilmes.Rows[e.RowIndex].FindControl("lblId")).Text);

            new VideoBusinessLayer.Business.Filme().Remover(idFilme);

            gdvFilmes.EditIndex = -1;
            PreencherFilmes();
        }

        protected void gdvFilmes_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gdvFilmes.EditIndex = -1;
            PreencherFilmes();
        }
    }
}