using System;
namespace Laba2
{
    class Programm
    {
        static void Main()
        {
            string myString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            int number = 0;
            while (true)
            {
                Console.Write("Input number: ");
                string input = Console.ReadLine();
                if (int.TryParse(input, out number) && number > 0 && number <= 26)
                {
                    break; 
                }
                else
                {
                    Console.WriteLine("Wrong number. ");
                }
            }
            Console.WriteLine("Result: ");
            int point = number - 1;
            while (point >= 0)
            {
                for (int i = number - 1; i >= point; i--)
                {
                    Console.Write(myString[i]);
                    Console.Write(" ");
                }
                point--;
                Console.WriteLine();
            }
        }
    }
}
