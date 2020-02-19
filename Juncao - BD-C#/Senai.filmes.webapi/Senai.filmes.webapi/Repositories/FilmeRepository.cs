using Senai.filmes.webapi.Domains;
using System;
using System.Collections.Generic;

using Senai.filmes.webapi.Interfaces;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

public class FilmeRepository : IFilmeRepository
{
    private string StringConexao = "Data Source=DEV501\\SQLEXPRESS; initial catalog=Filmes; user Id =sa; pwd=sa@132";

  public List<FilmeDomain> ListarFilmes()
    {
        List<FilmeDomain> Filmes = new List<FilmeDomain>();

        using (SqlConnection con = new SqlConnection(StringConexao))
        {
            string queryFilmes = "SELECT IdFilme, Titulo ,IdGenero FROM Filmes";

            con.Open();

            SqlDataReader rdr;

            using (SqlCommand cmd = new SqlCommand(queryFilmes, con))
            {
                rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    FilmeDomain filme = new FilmeDomain()
                    {
                        IdFilme = Convert.ToInt32(rdr[0]),
                        Titulo = rdr["Titulo"].ToString(),
                        IdGenero = Convert.ToInt32(rdr[2])
                    };

                    Filmes.Add(filme);
                }
            }
        }

        return Filmes;
    }

    public void CadastrarFilme(FilmeDomain filme)
    {
        using (SqlConnection con = new SqlConnection(StringConexao))
        {
            string queryInserir = "INSERT INTO Filmes (Titulo,IdGenero) VALUES (@Titulo, @IdGenero)";

            using (SqlCommand cmd = new SqlCommand(queryInserir, con))
            {
                cmd.Parameters.AddWithValue("@Titulo", filme.Titulo);
                cmd.Parameters.AddWithValue("@IdGenero",filme.IdGenero);

                con.Open();

                cmd.ExecuteNonQuery();
            }
        }
    }

    public void AtualizarFilme(FilmeDomain FilmeA)
    {
        using (SqlConnection con = new SqlConnection(StringConexao))
        {
            string queryAtualizar = "UPDATE Filmes SET Titulo = 'Rambo' WHERE IdFilme = @ID";
        }
    }

    

    public void DeletarFilme(int id)
    {
        using (SqlConnection con = new SqlConnection(StringConexao))
        {
            string queryDeletar = "DELETE FROM Filmes WHERE IdFilme = @ID";

            using (SqlCommand cmd = new SqlCommand(queryDeletar, con))
            {
                cmd.Parameters.AddWithValue("@ID", id);

                con.Open();

                cmd.ExecuteNonQuery();
            }
        }
    }

    public void ListarFilmesId(int id)
    {
        using (SqlConnection con = new SqlConnection(StringConexao))
        {
            string queryProcurarId = "SELECT IdFilme FROM Filmes WHERE IdFilme = @ID";

            using (SqlCommand cmd = new SqlCommand(queryProcurarId, con))
            {
                cmd.Parameters.AddWithValue("@ID", id);

                con.Open();


            }
        }
    }

    public FilmeDomain GetById(int id)
    {
        using (SqlConnection con = new SqlConnection(StringConexao))
        {
            string queryId = "SELECT IdFilme, Titulo FROM Filmes WHERE IdFilme = @ID";

            using (SqlCommand cmd = new SqlCommand(queryId, con))
            {
                cmd.Parameters.AddWithValue("@ID", id);

                con.Open();

                SqlDataReader rdr;

                rdr = cmd.ExecuteReader();

                if (rdr.Read())
                {
                    FilmeDomain filme = new FilmeDomain
                    {
                        IdFilme = Convert.ToInt32(rdr["IdFilme"]),
                        Titulo = rdr["Titulo"].ToString()
                    };

                    return filme;
                }
                return null;
            }
        }
    }
}
