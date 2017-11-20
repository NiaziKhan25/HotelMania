using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(HotalMania.Startup))]
namespace HotalMania
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
