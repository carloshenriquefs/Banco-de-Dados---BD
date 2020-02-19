using Senai.filmes.webapi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.filmes.webapi.Interfaces
{
    interface IFilmeRepository
    {
        List<FilmeDomain> ListarFilmes();

        void ListarFilmesId(int id);

        void CadastrarFilme(FilmeDomain filme);

        void AtualizarFilme(FilmeDomain FilmeA);

        void DeletarFilme(int id);

        FilmeDomain GetById(int id);

    }
}
