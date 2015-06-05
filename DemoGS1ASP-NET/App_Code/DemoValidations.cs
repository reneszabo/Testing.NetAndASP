using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;

namespace DemoGS1ASP_NET.DEMO
{

    class DemoValidations
    {

        public String checkLogin(string email, string pass)
        {

            ConnectDemoDataContext dataContent = new ConnectDemoDataContext();

            var model = (from x in dataContent.Users
                         where
                         x.email == email
                         && x.password == pass
                         select x);

          
            foreach (var item in model)
            {
                if(item.email == email ){
                    return item.id.ToString();
                }
            }

            return "ERROR";
        }
    }
}
