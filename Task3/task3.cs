using System;
public class Program
{
    public static void Main(string[] args)
    {
        int numbers = Convert.ToInt32(Console.ReadLine());
        int count = 0;
        while (numbers != 0)
        {
            int perem = Convert.ToInt32(Console.ReadLine());
            while (perem > 0)
            {
                int ost = perem % 10;
                if (ost % 3 == 0)
                {
                    count += ost;
                }
                perem /= 10;
            }
            numbers--;
        }
        Console.WriteLine(count);
    }
}
