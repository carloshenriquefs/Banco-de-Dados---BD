using Senai.filmes.webapi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.filmes.webapi.Interfaces
{
    interface IGeneroRepository
    {
        /// <summary>
        //Listar todos os generos
        /// </summary>
        /// <returns>Retorna uma lista de generos</returns>
        List<GeneroDomain> Listar();
    }
}
