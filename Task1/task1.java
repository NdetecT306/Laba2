import java.util.Scanner;
class Main {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int number = 0;
        while (true) {
            System.out.println("Введите число: ");
            if (in.hasNextInt()) {
                number = in.nextInt();
                if (number > 0 && number <= 26) {
                    break; 
                }
            } else {
                in.next(); 
            }
            System.out.println("Неправильное число. Попробуйте снова.");
        }
        String s = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        int perem = number - 1;
        while (perem >= 0) {
            StringBuilder sb = new StringBuilder(s.substring(perem, number));
            String output = sb.reverse().toString();
            System.out.println(String.join(" ", output.split("")));
            perem--;
        }
        in.close(); 
    }
}
