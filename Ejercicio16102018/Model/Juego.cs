using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ejercicio16102018.Model
{
    public class Juego
    {

        int id;
        String nombre;
        int stock;
        int precio;

        public int Id { get => id; set => id = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public int Stock { get => stock; set => stock = value; }
        public int Precio { get => precio; set => precio = value; }
    }
}