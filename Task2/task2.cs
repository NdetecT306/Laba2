using System;
using System.Collections.Generic; 
public class Program
{
    public static void Main()
    {
        int numbers = Convert.ToInt32(Console.ReadLine());
        int max = 0;
        List<int> clumba = new List<int>(); 
        if (numbers <= 0)
        {
            Console.Write("Быть не может");
        }
        else
        {
            for (int i = 0; i < numbers; ++i)
            {
                int flower = Convert.ToInt32(Console.ReadLine());
                if (flower > 0)
                {
                    clumba.Add(flower);
                }
                if (flower > max)
                {
                    max = flower;
                }
            }
            int poliv = Convert.ToInt32(Console.ReadLine());
            if (poliv < max)
            {
                Console.Write("Как купишь новую лейку - приходи.");
            }
            else
            {
                int step = 0;
                int perem = poliv;
                for (int i = 0; i < clumba.Count; i++)
                {
                    if (perem < clumba[i])
                    {
                        step += (i * 2 + 1);
                        perem = poliv;
                    }
                    else
                    {
                        step += 1;
                    }
                    perem -= clumba[i];
                }
                Console.WriteLine(step);
            }
        }
    }
}
