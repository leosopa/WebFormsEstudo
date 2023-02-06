using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GerenciaFilmes.Startup))]
namespace GerenciaFilmes
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
