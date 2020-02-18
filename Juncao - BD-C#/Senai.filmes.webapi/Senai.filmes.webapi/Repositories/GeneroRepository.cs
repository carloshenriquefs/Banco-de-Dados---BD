using Senai.filmes.webapi.Domains;
using Senai.filmes.webapi.Interfaces;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.filmes.webapi.Repositories
{
    //CONTROLLER = responsavel pelos endpoints referentes aos generos

    //Como as coisas são feitas = repositorios
    //herdar do repositorio para interface
    public class GeneroRepository : IGeneroRepository
    {
        //Definir servidor e o nome do banco de dados e o usuario com o Id e Senha
        //integrated security=true - sem o log
        private string StringConexao = "Data Source=DEV501\\SQLEXPRESS; initial catalog=Filmes; user Id =sa; pwd=sa@132";
        //private string StringConexao = "Data Source=LAPTOP-N251D43S\\TEW_SQLEXPRESS; integrated security = true";
        bool novo;

        public object SqlDataReader { get; private set; }

        SqlCommand comando = null;

        public GeneroRepository()
        {
        }

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

        public void Cadastrar(GeneroDomain genero)
        {
            using (SqlConnection con = new SqlConnection(StringConexao))
            {
                //Forma 1º - JEITO ERRADO
                //string queryInsert = "INSERT INTO Genero (Nome) VALUES('" + genero.Nome + "')";

                //FORMA 2°
                string queryInsert = "INSERT INTO Genero (Nome) VALUES (@Nome)";

                using (SqlCommand cmd = new SqlCommand(queryInsert,con))
                {

                    //Forma 2° - JEITO CERTO
                    cmd.Parameters.AddWithValue("@Nome", genero.Nome);

                    con.Open();
                    //Executa o comando sem executar
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public void Atualizar(GeneroDomain generoA)
        {
            using (SqlConnection con = new SqlConnection(StringConexao))
            {
                string queryUpdate = "UPDATE Generos SET Nome = 'Acao' WHERE IdGenero = @ID";
            }
        }

        public void Deletar(int id)
        {
            //Conexao com  o banco de dados
            using (SqlConnection con = new SqlConnection(StringConexao))
            {
                string queryDeletar = "DELETE FROM Generos WHERE IdGenero = @ID";

                using (SqlCommand cmd = new SqlCommand(queryDeletar, con))
                {
                    cmd.Parameters.AddWithValue("@ID",id);
                    //cmd.Parameters.AddWithValue("");

                    con.Open();

                    //mandar dados
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public void AtualizarIdCorpo(GeneroDomain generoA)
        {
            throw new NotImplementedException();
        }

        public void AtualizarIdUrl(int id, GeneroDomain genero)
        {
            using (SqlConnection con = new SqlConnection(StringConexao))
            {
                string queryAtualizar = "UPDATE Generos SET Nome = @Nome WHERE IdGenero = @ID";

                using (SqlCommand cmd = new SqlCommand(queryAtualizar, con))
                {
                    cmd.Parameters.AddWithValue("@ID", id);
                    cmd.Parameters.AddWithValue("@Nome", genero.Nome);

                    con.Open();

                    cmd.ExecuteNonQuery();
                }
            }
        }

        public GeneroDomain GetById(int id)
        {
            using (SqlConnection con = new SqlConnection(StringConexao))
            {
                string queryBuscar = "SELECT IdGenero, Nome FROM Generos WHERE IdGenero = @ID ";

                using (SqlCommand cmd = new SqlCommand(queryBuscar, con))
                {
                    cmd.Parameters.AddWithValue("@ID", id);

                    con.Open();

                    SqlDataReader rdr;

                    rdr = cmd.ExecuteReader();

                    if(rdr.Read())
                    {
                        GeneroDomain genero = new GeneroDomain
                        {
                            IdGenero = Convert.ToInt32(rdr["IdGenero"]),
                            Nome = rdr["Nome"].ToString()
                        };

                        return genero;
                    }
                    return null;
                }
            }
        }
    }
}
