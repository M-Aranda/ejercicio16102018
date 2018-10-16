using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Ejercicio16102018.Model
{
    public class DAO_porquesi : Conexion, IDAO<juego_genero>
    {
        public DAO_porquesi() : base("ejercicioJuegos")
        {
        }

        public void Create(juego_genero ob)
        {
            throw new NotImplementedException();
        }

        public void Delete(int id)
        {
            throw new NotImplementedException();
        }

        public DataTable Read()
        {
            throw new NotImplementedException();
        }

        public void Update(juego_genero ob)
        {
            throw new NotImplementedException();
        }

        public List<Juego> Top3()
        {
            List<Juego> lista = new List<Juego>();
            DataTable dt = Ejecutar("SELECT * FROM verTop3Juegos");

            Juego j;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                j = new Juego();
                j.Id =int.Parse(dt.Rows[i][0].ToString());
                j.Nombre = dt.Rows[i][1].ToString();
                j.Stock = int.Parse(dt.Rows[i][2].ToString());
                j.Precio = int.Parse(dt.Rows[i][3].ToString());
                lista.Add(j);
            }
            return lista;
        }


        public int PromedioPrecios()
        {
            int promedio = 0;
            DataTable dt = Ejecutar("SELECT AVG(precio) FROM juego");
            promedio = int.Parse(dt.Rows[0][0].ToString());

            return promedio;
        }


        public List<Juego> VerJuegosSurvival()
        {
            List<Juego> lista = new List<Juego>();
            DataTable dt = Ejecutar("SELECT * FROM verJuegosSurvival");

            Juego j;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                j = new Juego();
                j.Id = int.Parse(dt.Rows[i][0].ToString());
                j.Nombre = dt.Rows[i][1].ToString();
                j.Stock = int.Parse(dt.Rows[i][2].ToString());
                j.Precio = int.Parse(dt.Rows[i][3].ToString());
                lista.Add(j);
            }
            return lista;
        }




    }
}