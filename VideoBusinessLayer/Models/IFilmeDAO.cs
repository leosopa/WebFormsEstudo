using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VideoBusinessLayer.DTO;

namespace VideoBusinessLayer.Models
{
    internal interface IFilmeDAO
    {

        bool Insert(FilmeDTO filme);
        bool Update(FilmeDTO filmeDTO);
        List<FilmeDTO> Select();
        FilmeDTO Select(int idFilme);
        bool Delete(int idFilme);
    }
}
