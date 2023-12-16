    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.Services;
using System.Web.UI.WebControls;

namespace WebAsp
    {
        //public class WebService : System.Web.Services.WebService
        //{
        public class Bilgiler
        {

            public string UsernameField;
            public string PasswordField;
            private string urlField;
            private int personId;
            public string content;    


            public string Username
            {
                get { return UsernameField; }
                set { UsernameField = value; }
            }

            public string Password
            {
                get { return PasswordField; }
                set { PasswordField = value; }
            }

            public string URLField
            {
                get { return urlField; }
                set { urlField = value; }
            }

            public int PersonId
            {
                get { return personId; }
                set { personId = value; }
            }

        public string Content
        {
            get { return content; }
            set { content = value; }
        }
        }
            
            
    }
    //}