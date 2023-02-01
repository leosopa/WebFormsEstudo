using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VideoBusinessLayer.DTO;

namespace VideoBusinessLayer.Models
{
    internal class FilmeEntityDAO: IFilmeDAO
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
            using (Models.Entities ctxFilmes = new Models.Entities())
            {
                return GetListFilmeDTO(ctxFilmes.FILMES);
            }
            
        }
        public FilmeDTO Select(int idFilme)
        {
            using (Models.Entities ctxFilmes = new Models.Entities())
            {
                return GetFilmeDTO(ctxFilmes.FILMES.FirstOrDefault(f => f.ID == idFilme));
            }
        }

        private FilmeDTO GetFilmeDTO(FILMES filme)
        {
            FilmeDTO filmeDTO = null;

            if (filme != null)
            {
                filmeDTO = new FilmeDTO() 
                    { 
                        Id = int.Parse(filme.ID.ToString()),
                        Titulo = filme.TITULO, 
                        Diretor = filme.DIRETOR, 
                        Ano = int.Parse(filme.ANO.ToString()),
                        URL = filme.URL_IMDB 
                    };
            }

            return filmeDTO;

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


        private List<FilmeDTO> GetListFilmeDTO(DbSet<FILMES> filmes)
        {
            List<FilmeDTO> filmesDTO = new List<FilmeDTO>();
            using (Models.Entities ctxFilmes = new Models.Entities())
            {
                foreach (var filme in ctxFilmes.FILMES)
                {
                    FilmeDTO filmeDTO = new FilmeDTO()
                    {
                        Id = int.Parse(filme.ID.ToString()),
                        Titulo = filme.TITULO,
                        Diretor = filme.DIRETOR,
                        Ano = int.Parse(filme.ANO.ToString()),
                        URL = filme.URL_IMDB
                    };
                }
            }

            return filmesDTO;
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

    }
}
