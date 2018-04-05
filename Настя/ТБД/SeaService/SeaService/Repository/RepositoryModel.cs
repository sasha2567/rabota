using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeaService.Repository
{
    class RepositoryModel
    {
        private List<Model> _entities;

        public List<Model> GetList()
        {
            return this._entities;
        }
    }
}
