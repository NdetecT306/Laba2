import java.util.Scanner;
class Main 
{
    public static void main(String[] args)
    {
        Scanner in = new Scanner(System.in);
        int numbers = in.nextInt(); 
        int count = 0;
        while(numbers!=0)
        {
            int perem = in.nextInt(); 
            while (perem != 0) 
            {
                int ost = perem % 10;
                if (ost % 3 == 0)
                {
                    count += ost;
                }
                perem /= 10;
            }
            numbers-=1;
        }
        System.out.println(count);
    }
}
