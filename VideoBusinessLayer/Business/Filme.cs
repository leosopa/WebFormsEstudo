using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VideoBusinessLayer.DTO;
using VideoBusinessLayer.Models;

namespace VideoBusinessLayer.Business
{
    public class Filme
    {
        private FilmeEntityDAO filmes;

        public Filme()
        {
            filmes = new FilmeEntityDAO();
        }

        public bool Salvar(FilmeDTO filme)
        {
            return filmes.Insert(filme);
        }

        public bool Atualizar(FilmeDTO filme)
        {
            return filmes.Update(filme);
        }

        public bool Remover(int filme)
        {
            return filmes.Delete(filme);
        }

        public List<FilmeDTO> Listar()
        {
            return filmes.Select();
        }

    }
}
