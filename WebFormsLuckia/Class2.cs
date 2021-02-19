using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace WebFormsLuckia
{
    public class Personas
    {

        public static List<Personas> personas = new List<Personas>();

        private string nombre;
        private string apellidos;
        private string mail;
        private string direccion;



        public Personas(string nombre, string apellidos, string direccion, string mail)
        {
            this.Nombre = nombre;
            this.Apellidos = apellidos;
            this.Direccion = direccion;
            this.Mail = mail;
        }

        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellidos { get => apellidos; set => apellidos = value; }
        public string Mail { get => mail; set => mail = value; }
        public string Direccion { get => direccion; set => direccion = value; }

        public static void LoadPersonas()
        {
            SqlConnection connection = new SqlConnection(
            ConfigurationManager.ConnectionStrings["conexionDatos"].ConnectionString
            );
            SqlCommand cmd = new SqlCommand("SELECT [nombre] "
            + ",[apellidos] "
            + ",[direccion] "
            + ",[email] "
            + "FROM[dbo].[USUARIOS]", connection);

            connection.Open();
            SqlDataReader read = cmd.ExecuteReader();
            personas = new List<Personas>();
            while (read.Read())
            {
                personas.Add(new Personas(
                read.GetString(0),
                read.GetString(1),
                read.GetString(2),
                read.GetString(3)
                ));
            }
            connection.Close();
        }
    }
}