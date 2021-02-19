using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsLuckia
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Boton_Click(object sender, EventArgs e)
        {
            Usuario user1 = new Usuario();

            if (TextBox6.Text != TextBox7.Text)
            {
                Listbox1.Visible = true;
                Listbox1.Items.Add("Error, las contraseñas no coinciden");
                System.Threading.Thread.Sleep(1000);
            }

            else
            {
                Listbox1.Visible = false;
                Listbox1.Items.Clear();

                try
                {
                    user1.GetUsuario = TextBox1.Text;
                    user1.Nombre = TextBox2.Text;
                    user1.Apellidos = TextBox3.Text;
                    user1.Direccion = TextBox5.Text;
                    user1.Email = TextBox4.Text;
                    user1.Password = TextBox6.Text;
                }
                catch(FormatException ExFormat)
                {
                    Listbox1.Items.Add("El formato introducido en alguno de los campos no es correcto");
                    Listbox1.Items.Add(ExFormat.Message);
                }
                catch(Exception Ex)
                {
                    Listbox1.Items.Add("Ha ocurrido un error");
                    Listbox1.Items.Add(Ex.Message);
                }



                SqlConnection con = new SqlConnection("Data Source=PLX300000002225\\SQLEXPRESS;Database=AdventureWorksLT2017;Integrated Security=SSPI;Trusted_Connection=true;");
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                //cmd.CommandText = "INSERT INTO dbo.USUARIOS (USUARIO,NOMBRE,APELLIDOS,EMAIL,DIRECCION,CONTRASEÑA) " +
                //    "VALUES(@param1,@param2,@param3,@param4,@param5,@param6)";

                cmd.CommandText =string.Format("exec dbo.PR_Inserta_Usuarios '{0}','{1}','{2}','{3}','{4}','{5}'",user1.GetUsuario,user1.Nombre,user1.Apellidos,user1.Email,user1.Direccion,user1.Password);
                //cmd.CommandText = "exec dbo.PR_Inserta_Usuarios " + user1.GetUsuario +","+ user1.Nombre + "," + user1.Apellidos + "," + user1.Email + "," + user1.Direccion + "," + user1.Password;

                //cmd.Parameters.AddWithValue("@param1", user1.GetUsuario);
                //cmd.Parameters.AddWithValue("@param2", user1.Nombre);
                //cmd.Parameters.AddWithValue("@param3", user1.Apellidos);
                //cmd.Parameters.AddWithValue("@param4", user1.Email);
                //cmd.Parameters.AddWithValue("@param5", user1.Direccion);
                //cmd.Parameters.AddWithValue("@param6", user1.Password);

                cmd.ExecuteNonQuery();
                con.Close();
            }

        }
    }
}