using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Q1
{
    class User:IComparable
    {
        private string username;
        private string email;
        private int roleid;

        public string Username { get => username; set => username = value; }
        public string Email { get => email; set => email = value; }
        public int Roleid { get => roleid; set => roleid = value; }

        public User()
        {
            username = "Nhuyen Thuy Huong";
            email = "huongnt7@fpt.edu.vn";
            roleid = 1;
        }

        public User(string username, string email, int roleid)
        {
            this.username = username;
            this.email = email;
            this.roleid = roleid;
        }

        public override string ToString()
        {
            string msg = "";
            msg += "Student'info\n";
            msg += "Name:" + username + ", Email:" + email + ", RoleID:" + roleid;
            return base.ToString();
        }

        int IComparable.CompareTo(object obj)
        {
            User u = (User)obj;
            return username.CompareTo(u.Username);
        }

     public override bool Equals(object obj)
        {
            User u = (User)obj;
            return (username == u.Username);
        }


    }
}
