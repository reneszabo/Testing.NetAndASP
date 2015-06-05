using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;


namespace DemoGS1ASP_NET.DEMO
{

    class DatabaseStuff
    {

        public User getSelf(string userId)
        {
            int id = Convert.ToInt32(userId);
            ConnectDemoDataContext dataContent = new ConnectDemoDataContext();

            User[] model = (from x in dataContent.Users
                         where
                         x.id == id
                         select x).ToArray<User>();
            return model[0];
        }
        public Array getCompany(){
            return new Array[3];
        }
        public Array getUsersFromCompany(){
            return new Array[3];
        }

    }
}