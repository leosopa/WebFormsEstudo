using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VideoBusinessLayer.DTO;

namespace GerenciaFilmes.Filmes
{
    public partial class CadastrarFilme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            FilmeDTO filme = new FilmeDTO();
            filme.Diretor = txtDiretor.Text;
            filme.Titulo = txtTitulo.Text;
            filme.Ano = int.Parse(txtAno.Text);
            filme.URL = txtUrl.Text;

            try
            {
                VideoBusinessLayer.Business.Filme filmeBO = new VideoBusinessLayer.Business.Filme();
                if (filmeBO.Salvar(filme))
                    lblResultado.Text = "Filme Inserido com Sucesso!";

            }
            catch (Exception err)
            {
                lblResultado.Text = "Falha ao realizar o cadastro do filme.";
            }
            finally
            {
                cleanComponents();
                pnlResultado.Visible = true;
                pnlCadastro.Visible = false;
            }
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            pnlCadastro.Visible = true;
            pnlResultado.Visible = false;
        }



        private void cleanComponents()
        {
            txtAno.Text = String.Empty;
            txtDiretor.Text = String.Empty;
            txtTitulo.Text = String.Empty;
            txtUrl.Text = String.Empty;
        }
    }
}