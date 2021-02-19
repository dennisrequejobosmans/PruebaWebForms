using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebFormsLuckia
{
    public class Usuario
    {
        private string usuario;
        private string nombre;
        private string apellidos;
        private string direccion;
        private string email;
        private string password;
        private int id;

        public string GetUsuario { get => usuario; set => usuario = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellidos { get => apellidos; set => apellidos = value; }
        public string Direccion { get => direccion; set => direccion = value; }
        public string Email { get => email; set => email = value; }
        public string Password { get => password; set => password = value; }
        public int Id { get => id; set => id = value; }

        public Usuario(string usuario, string nombre, string apellidos, string direccion, string email, string password, int id)
        {
            this.GetUsuario = usuario;
            this.Nombre = nombre;
            this.Apellidos = apellidos;
            this.Direccion = direccion;
            this.Email = email;
            this.Password = password;
            this.Id = id;
        }

        public Usuario()
        {

        }

        public bool contraseñaCorrecta(string pass)
        {
            return pass == password;
        }
    }
}