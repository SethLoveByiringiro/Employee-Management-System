using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Employee_Management.Startup))]
namespace Employee_Management
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
