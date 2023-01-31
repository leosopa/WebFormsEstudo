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
        private FilmeAdoDAO filmesAdo;

        public Filme()
        {
            filmes = new FilmeEntityDAO();
            filmesAdo = new FilmeAdoDAO();
        }

        public bool Salvar(FilmeDTO filme)
        {
            return filmesAdo.Insert(filme);
        }

        public bool Atualizar(FilmeDTO filme)
        {
            return filmesAdo.Update(filme);
        }

        public bool Remover(int filme)
        {
            return filmesAdo.Delete(filme);
        }

        public List<FilmeDTO> Listar()
        {
            return filmesAdo.Select();
        }

    }
}
