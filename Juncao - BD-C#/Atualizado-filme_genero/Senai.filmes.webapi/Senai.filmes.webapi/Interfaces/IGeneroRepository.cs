using Senai.filmes.webapi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.filmes.webapi.Interfaces
{
    //Interface responsavel pelo repositorio Genero
    interface IGeneroRepository
    {
        /// <summary>
        //Listar todos os generos
        /// </summary>
        /// <returns>Retorna uma lista de generos</returns>
        List<GeneroDomain> Listar();

        //Cadastrar um novo genero
        //Objeto genero que será cadastrado
        void Cadastrar(GeneroDomain genero);

        void AtualizarIdCorpo(GeneroDomain generoA);

        /// <summary>
        /// Atualiza um genero existente
        /// </summary>
        /// <param name="Id">ID do genero que será atualizado</param>
        /// <param name="genero">Objeto genero que será atualizado</param>
        void AtualizarIdUrl(int id, GeneroDomain genero);

        //Deletar um Genero
        void Deletar(int id);


        /// <summary>
        /// Busca um genero atraves de um Id
        /// </summary>
        /// <param name="id">ID do genero que será buscado</param>
        /// <returns></returns>
        GeneroDomain GetById(int id);
        
    }
}
