using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Base
{
    public class Usuario
    {
        private int id;
        private string name;
        private string password;
        private int rol;

        public int ID { get; set; }

        public string Nombre { get; set; }

        public string Password { get; set; }

        public int Rol { get; set; }

        public Usuario()
        {

        }

        public Usuario(int id, string nombre, string password, int rol)
        {
            this.id = id;
            this.name = nombre;
            this.password = password;
            this.rol = rol;
        }

        public void Crear()
        {

        }

        public void Guardar(string datosDetalles)
        {
 

        }

        public void Modificar()
        {

        }

        public void Eliminar()
        {

        }
    }
}
