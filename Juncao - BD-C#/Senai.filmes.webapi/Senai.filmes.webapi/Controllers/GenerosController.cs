using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Senai.filmes.webapi.Domains;
using Senai.filmes.webapi.Interfaces;
using Senai.filmes.webapi.Repositories;

namespace Senai.filmes.webapi.Controllers
{
    //Controlador - Devolve para o front-end
    [Produces("application/json")]     //Resposta do tipo Jason
    [Route("api/[controller]")] //Acessa o tipo de controlador -rota
    [ApiController]
    public class GenerosController : ControllerBase
    {
        //Cria um objeto e recebe todos os metodos definidos da interface 
        private IGeneroRepository _generoRepository { get; set; }

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
    }
}