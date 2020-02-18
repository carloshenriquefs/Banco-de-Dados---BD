using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Senai.filmes.webapi.Domains;
using Senai.filmes.webapi.Interfaces;
using Senai.filmes.webapi.Repositories;
using Senai.filmes.webapi.Models;

namespace Senai.filmes.webapi.Controllers
{
    //Controller responsável pelos endpoints referentes aos generos

    //Controlador - Devolve para o front-end
    [Produces("application/json")]     //Resposta do tipo Jason
    [Route("api/[controller]")] //Acessa o tipo de controlador -rota

    //Define que é um controlador de API
    [ApiController]
    public class GenerosController : ControllerBase
    {
        //Cria um objeto e recebe todos os metodos definidos da interface 
        private IGeneroRepository _generoRepository { get; set; }

        private static List<Genero> Generos = new List<Genero>();

        public GenerosController()
        {
            //chamar os metodos da classe generoRepository
            _generoRepository = new GeneroRepository();
        }

        //Requisição de lista - pegar 
        //Definir verbo
        //TipodeLista = IEnumerable
        //Repository conexão com o banco
        //Controller conexão com o front-end
        [HttpGet]
        public IEnumerable<GeneroDomain> Get()
        {
            return _generoRepository.Listar();
        }

        //[HttpPost]
        //public IActionResult Post()
        //{
        //    return _generoRepository.Inserir();
        //}

        //Insercao de dados - POST
        public void Post(string nome)
        {
            if(!string.IsNullOrEmpty(nome))
            {
                Generos.Add(new Genero(nome));
            }
        }

        //[HttpPut]
        //public IActionResult Put()
        //{
        //    return _generoRepository.Colocar();
        //}

        //[HttpDelete]
        //public IActionResult Delete()
        //{
        //    return _generoRepository.Deletar();
        //}

        //Consultas link
        public void Delete(string nome)
        {
            Generos.RemoveAt(Generos.IndexOf(generos.Firts(x => x.Nome.Equals(nome))));
        }
    }
}