using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//Los 2 que vienenn son necesarios para trabajar con BDs
using System.Data;
using System.Data.SqlClient;

namespace Ejercicio16102018.Model
{
    /// <summary>
    /// Description of Conexion.
    /// </summary>
    public class Conexion
    {
        private SqlConnection con;
        private SqlCommand sen;
        public SqlDataReader rs;

        public Conexion(String bd)
        {
            con = new SqlConnection(
                    //Esta es para windows authentication
                    /*
                    "Data Source=localhost;" +
                    "Initial Catalog=" + bd + "; " +
                    "Integrated Security=true; "*/

                "Data Source=localhost;" +
                "Initial Catalog=" + bd + "; " +
                "User id=sa; " +
                "Password=123456;"
                 

                );

        }

        public DataTable Ejecutar(String query)
        {
            Console.WriteLine("QUERY=" + query);
            DataTable dt = null;

            con.Open();
            sen = new SqlCommand(query, con);

            if (query.ToLower().Contains("select"))
            {
                rs = sen.ExecuteReader();
                dt = new DataTable();
                dt.Load(rs);
            }
            else
            {
                sen.ExecuteNonQuery();
            }
            Cerrar();
            return dt;
        }

        public void Cerrar()
        {
            con.Close();
        }
    }
}