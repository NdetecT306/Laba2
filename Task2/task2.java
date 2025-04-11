import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
class Main {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int numbers = in.nextInt();
        int max = 0;
        if (numbers <= 0) {
            System.out.println("Быть не может");
            return; 
        }
        List<Integer> clumba = new ArrayList<>();
        for (int i = 0; i < numbers; ++i) {
            int flower = in.nextInt();
            if (flower > 0) {
                clumba.add(flower);
            }
            if (flower > max) {
                max = flower;
            }
        }
        int poliv = in.nextInt();
        if (poliv < max) {
            System.out.println("Как купишь новую лейку - приходи.");
            return;
        }
        int step = 0;
        int perem = poliv;
        for (int i = 0; i < clumba.size(); i++) {
            if (perem < clumba.get(i)) {
                step = step + (i * 2 + 1);
                perem = poliv;
            } else {
                step += 1;
            }
            perem -= clumba.get(i);
        }
        System.out.println(step);
    }
}
