using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Q1
{
    class Program
    {
        static void Main(string[] args)
        {
            User u = new User();
            Console.WriteLine(u.ToString());
            Console.WriteLine();

            ArrayList lu = new ArrayList();
            lu.Add(new User("trungnhHE130147", "trungnhHE130147@fpt.edu.vn", 1));
            lu.Add(new User("trungnhHE130148", "trungnhHE130148@fpt.edu.vn", 1));
            lu.Add(new User("trungnhHE130149", "trungnhHE130149@fpt.edu.vn", 2));

            User u1 = new User("trungnhHE130148", "trungnhHE130148@gmail.com", 1);
            Console.WriteLine("Index of u1 = " + lu.IndexOf(u1));

            try
            {
                object o = new object();
                Console.WriteLine("Index of o = " + lu.IndexOf(o));
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            Console.ReadKey();



        }
    }
}
