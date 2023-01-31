using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using VideoBusinessLayer.Business;
using VideoBusinessLayer.DTO;
using VideoBusinessLayer.Util;

namespace VideoBusinessLayer.Models
{
    internal class FilmeAdoDAO : IFilmeDAO
    {
        private ConnectionFactory factory;
        public FilmeAdoDAO()
        {
            factory = new ConnectionFactory("OracleDbContext");
        }

        public bool Delete(int idFilme)
        {
            using (DbConnection conn = factory.Connection)
            {
                DbCommand cmd = conn.CreateCommand();
                cmd.CommandText = "USR_FILMES.DELETE_FILME";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                DbParameter id;

                id = cmd.CreateParameter();
                id.ParameterName = "ID_FILME";
                id.DbType = System.Data.DbType.Int64;
                id.Value = idFilme;
                cmd.Parameters.Add(id);

                conn.Open();

                if (cmd.ExecuteNonQuery() != 0)
                {
                    return true;
                }

            }

            return false;
        }

        public bool Insert(FilmeDTO filme)
        {
            using (DbConnection conn = factory.Connection)
            {
                DbCommand cmd = conn.CreateCommand();
                cmd.CommandText = "USR_FILMES.INSERT_FILME";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                DbParameter titulo, diretor, ano, url, id;
                
                titulo = cmd.CreateParameter();
                titulo.ParameterName = "TITULO_FILME";
                titulo.Value = filme.Titulo;
                cmd.Parameters.Add(titulo);

                diretor = cmd.CreateParameter();
                diretor.ParameterName = "DIRETOR_FILME";
                diretor.Value = filme.Diretor;
                cmd.Parameters.Add(diretor);

                ano = cmd.CreateParameter();
                ano.ParameterName = "ANO_FILME";
                ano.Value = filme.Ano;
                ano.DbType = System.Data.DbType.Int64;
                cmd.Parameters.Add(ano);

                url = cmd.CreateParameter();
                url.ParameterName = "URL_IMDB_FILME";
                url.Value = filme.URL;
                cmd.Parameters.Add(url);

                id = cmd.CreateParameter();
                id.ParameterName = "NEW_ID";
                id.Direction = System.Data.ParameterDirection.Output;
                id.DbType = System.Data.DbType.Int64;
                cmd.Parameters.Add(id);

                conn.Open();
                cmd.ExecuteNonQuery();
                

                if (cmd.Parameters["NEW_ID"].Value != null)
                {
                    return true;
                }
                              
            }

            return false;
        }

        public List<FilmeDTO> Select()
        {

            List<FilmeDTO> filmes = new List<FilmeDTO>();

            using (DbConnection conn = factory.Connection)
            {
                DbCommand cmd = conn.CreateCommand();
                cmd.CommandText = "SELECT * FROM FILMES";

                conn.Open();
                DbDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    FilmeDTO filme = new FilmeDTO();

                    filme.Id = int.Parse(reader[0].ToString());
                    filme.Titulo = reader[1].ToString();
                    filme.Diretor = reader[2].ToString();
                    filme.Ano = int.Parse(reader[3].ToString());
                    filme.URL = reader[4].ToString();

                    filmes.Add(filme);
                }
            }

            return filmes;
        }

        public FilmeDTO Select(int idFilme)
        {
            throw new NotImplementedException();
        }

        public bool Update(FilmeDTO filme)
        {
            using (DbConnection conn = factory.Connection)
            {
                DbCommand cmd = conn.CreateCommand();
                cmd.CommandText = "USR_FILMES.UPDATE_FILME";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                DbParameter titulo, diretor, ano, url, id;

                id = cmd.CreateParameter();
                id.ParameterName = "ID_FILME";
                id.Value = filme.Id;
                cmd.Parameters.Add(id);

                titulo = cmd.CreateParameter();
                titulo.ParameterName = "TITULO_FILME";
                titulo.DbType = System.Data.DbType.String;
                titulo.Value = filme.Titulo;
                cmd.Parameters.Add(titulo);

                diretor = cmd.CreateParameter();
                diretor.ParameterName = "DIRETOR_FILME";
                diretor.DbType = System.Data.DbType.String;
                diretor.Value = filme.Diretor;
                cmd.Parameters.Add(diretor);

                ano = cmd.CreateParameter();
                ano.ParameterName = "ANO_FILME";
                ano.Value = filme.Ano;
                cmd.Parameters.Add(ano);

                url = cmd.CreateParameter();
                url.ParameterName = "URL_IMDB_FILME";
                url.DbType = System.Data.DbType.String;
                url.Value = filme.URL;
                cmd.Parameters.Add(url);

                

                conn.Open();
                
                

                if (cmd.ExecuteNonQuery() != 0)
                {
                    return true;
                }
                              
            }

            return false;
        }
    }
}
