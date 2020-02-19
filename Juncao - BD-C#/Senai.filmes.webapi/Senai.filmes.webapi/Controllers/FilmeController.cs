using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Senai.filmes.webapi.Domains;
using Senai.filmes.webapi.Interfaces;

namespace Senai.filmes.webapi.Controllers
{
    [Produces("application/json")]
    [Route("api/[controller]")]
    [ApiController]
    public class FilmeController : ControllerBase
    {
        private IFilmeRepository _filmesRepository { get; set; }

        public FilmeController()
        {
            _filmesRepository = new FilmeRepository();
        }


        [HttpGet]
        public IEnumerable<FilmeDomain> Get()
        {
            return _filmesRepository.ListarFilmes();
        }

        [HttpPost]
        public IActionResult Post(FilmeDomain filmeRecebido)
        {
            _filmesRepository.CadastrarFilme(filmeRecebido);

            return StatusCode(201);
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            _filmesRepository.DeletarFilme(id);
            return Ok("Filme deletado!");
        }
    }
}