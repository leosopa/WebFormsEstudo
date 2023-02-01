using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VideoBusinessLayer.Models;

namespace VideoBusinessLayer.Util
{
    public class ConnectionFactory
    {
        protected readonly DbProviderFactory Factory;

        protected readonly string ConnectionString;

        public ConnectionFactory(string connectionStringName)
        {
            var settings = ConfigurationManager.ConnectionStrings[connectionStringName];
            this.Factory = DbProviderFactories.GetFactory(settings.ProviderName);
            this.ConnectionString = settings.ConnectionString;
        }

        public DbConnection Connection
        {
            get
            {
                var con = Factory.CreateConnection();
                con.ConnectionString = this.ConnectionString;
                return con;
            }
        }

        public IFilmeDAO GetFilmeDAO()
        {
            var daoClass = ConfigurationManager.AppSettings["DataAccessClass"].ToString();

            if (daoClass == "ADO")
                return new FilmeAdoDAO();
            else if (daoClass == "Entity")
                return new FilmeEntityDAO();

            return null;

        }
    }
}
