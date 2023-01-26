using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VideoBusinessLayer.DTO;

namespace VideoBusinessLayer.Models
{
    internal class FilmeEntityDAO
    {

        public bool Insert(FilmeDTO filme)
        {
            using (Models.Entities ctxFilmes = new Models.Entities())
            {
                
                ctxFilmes.FILMES.Add(GetFilmeModel(filme));
                ctxFilmes.SaveChanges();
            }
            return true;
        }

        private FILMES GetFilmeModel(FilmeDTO filmeDTO)
        {
            FILMES filme = new FILMES();
            filme.ID = filmeDTO.Id;
            filme.TITULO = filmeDTO.Titulo;
            filme.URL_IMDB = filmeDTO.URL;
            filme.DIRETOR = filmeDTO.Diretor;
            filme.ANO = filmeDTO.Ano;

            return filme;
        }

        public bool Update(FilmeDTO filmeDTO)
        {
            using (Models.Entities ctxFilmes = new Models.Entities())
            {
                FILMES filme =  ctxFilmes.FILMES.First(f => f.ID == filmeDTO.Id);

                if (filme != null)
                {
                    filme.TITULO = filmeDTO.Titulo;
                    filme.URL_IMDB = filmeDTO.URL;
                    filme.DIRETOR = filmeDTO.Diretor;
                    filme.ANO = filmeDTO.Ano;
                }

                ctxFilmes.SaveChanges();
            }
            return true;
        }

        public List<FilmeDTO> Select()
        {
            return GetListFilmeDTO();
        }

        private List<FilmeDTO> GetListFilmeDTO()
        {
            List<FilmeDTO> filmes = new List<FilmeDTO>();
            using (Models.Entities ctxFilmes = new Models.Entities())
            {
                foreach (var filme in ctxFilmes.FILMES)
                {
                    FilmeDTO filmeDTO = new FilmeDTO();
                    filmeDTO.Id = int.Parse(filme.ID.ToString());
                    filmeDTO.Titulo = filme.TITULO;
                    filmeDTO.URL = filme.URL_IMDB;
                    filmeDTO.Diretor = filme.DIRETOR;
                    filmeDTO.Ano = int.Parse(filme.ANO.ToString());
                    filmes.Add(filmeDTO);
                }
            }

            return filmes;
        }

        public FilmeDTO Select(int idFilme)
        {
            return new FilmeDTO();
        }

        public bool Delete (int idFilme)
        {
            using (Models.Entities ctxFilmes = new Models.Entities())
            {
                FILMES filme = ctxFilmes.FILMES.First(f => f.ID == idFilme);

                if (filme != null)
                {
                    ctxFilmes.FILMES.Remove(filme);
                }

                ctxFilmes.SaveChanges();
            }
            return true;
        }

    }
}
