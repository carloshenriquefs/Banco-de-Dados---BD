using Senai.filmes.webapi.Domains;
using Senai.filmes.webapi.Interfaces;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.filmes.webapi.Repositories
{
    //Como as coisas são feitas = repositorios
    //herdar do repositorio para interface
    public class GeneroRepository : IGeneroRepository
    {
        //Definir servidor e o nome do banco de dados e o usuario com o Id e Senha
        //integrated security=true - sem o log
        private string StringConexao = "Data Source=DEV501\\SQLEXPRESS; initial catalog=Filmes; user Id =sa; pwd=sa@132";

        public List<GeneroDomain> Listar()
        {
            List<GeneroDomain> Generos = new List<GeneroDomain>();

            //Conecta com o banco de dados 
            //Projeto -> Gerenciar pacotes do nuget
            //SQLCLIENT
            //con = objeto de connexao
            //using - abre e fecha a conexao do bando de dados
            using (SqlConnection con = new SqlConnection(StringConexao))
            {
                //Traz o resultado dos generos
                string query = "SELECT IdGenero, Nome FROM Genero";


                //abrir conexao com o banco
                con.Open();

                //leitura dos dados
                SqlDataReader rdr;

                //Juntar 
                using (SqlCommand cmd = new SqlCommand(query,con))
                {
                    //Executa leitura
                    rdr = cmd.ExecuteReader();

                    //linhas pra ler
                    while(rdr.Read())
                    {
                        //Pegar os valores do banco
                        GeneroDomain genero = new GeneroDomain
                        {
                            //rdr = registro
                            //[0] = COLUNA 0 - primeira coluna
                            //rdr - primeira coluna
                            //[1] - Coluna 1 - segunda coluna
                            IdGenero = Convert.ToInt32(rdr[0]),
                            Nome = rdr["Nome"].ToString()
                        };

                        Generos.Add(genero);
                    }
                }
            }

            return Generos;
        }
    }
}
