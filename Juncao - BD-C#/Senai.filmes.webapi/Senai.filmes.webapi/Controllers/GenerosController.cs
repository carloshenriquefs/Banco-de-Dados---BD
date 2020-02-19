using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Senai.filmes.webapi.Domains;
using Senai.filmes.webapi.Interfaces;
using Senai.filmes.webapi.Repositories;
//using Senai.filmes.webapi.Models;

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


        [HttpPost]
        public IActionResult Post(GeneroDomain generoRecebido)
        {
            _generoRepository.Cadastrar(generoRecebido);

            //return Ok(); //status code 200
            //return BadRequest(); // Status Code 400
            //return NotFound(); //Status code 404
            //return StatusCode(203); //Status code 203
            return StatusCode(201); //status code 201 - created
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            _generoRepository.Deletar(id);
            return Ok("Gênero deletado");
        }

        [HttpPut("{id}")]
        public IActionResult PUTurl(int id, GeneroDomain generoAtualizado)
        {
            GeneroDomain generoBuscado = _generoRepository.GetById(id);

            if(generoBuscado == null)
            {
                return NotFound(new { messagem = "Genero não encontrado", erro = true });
            }

            _generoRepository.AtualizarIdUrl(id,generoAtualizado);

            try
            {
                _generoRepository.AtualizarIdUrl(id, generoAtualizado);
                return NoContent();
            }
            catch(Exception erro)
            {
                return BadRequest(erro);
            }
            
        }

        [HttpPut]
        public IActionResult PutIdCorpo(GeneroDomain generoAtualizado)
        {
            GeneroDomain generoBuscado = _generoRepository.BuscarPorId(generoAtualizado.IdGenero);

            if(generoBuscado != null)
            {
                try
                {
                    _generoRepository.AtualizarIdCorpo(generoAtualizado);

                    return NoContent();

                }
                catch(Exception erro)
                {
                    return BadRequest(erro);
                }
            }
            return NotFound 
                (
                    new 
                    {
                        mensagem = "Gênero não encontrado", 
                        erro = true
                    }
                );
        
        }

        [HttpGet("{id}")]
        public IActionResult GetById(int id)
        {
            GeneroDomain generoBuscado = _generoRepository.GetById(id);

            if(generoBuscado == null)
            {
                return NotFound("Nenhum genero Encontrado");
            }

            return StatusCode(200, generoBuscado);

            
        }


        
    

       

















    
    }
}