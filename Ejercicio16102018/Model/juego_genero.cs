using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ejercicio16102018.Model
{
    public class juego_genero
    {
        int id;
        Juego j;
        Genero g;

        public int Id { get => id; set => id = value; }
        public Juego J { get => j; set => j = value; }
        public Genero G { get => g; set => g = value; }
    }
}