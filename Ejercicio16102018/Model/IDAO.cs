using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Ejercicio16102018.Model
{
    interface IDAO<T>
    {
        void Create(T ob);
        DataTable Read();
        void Update(T ob);
        void Delete(int id);

    }
}
