using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VideoBusinessLayer.DTO
{
    public class FilmeDTO
    {

        public int Id { get; set; } 
        
        public string Titulo { get; set; }

        public int Ano { get; set; }   

        public string URL { get; set; }

        public string Diretor { get; set; }

    }
}
