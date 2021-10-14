import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Hãy nhập a: ");
        double a = Double.parseDouble(scanner.nextLine());
        System.out.print("Hãy nhập b: ");
        double b = Double.parseDouble(scanner.nextLine());
        System.out.print("Hãy nhập c: ");
        double c = Double.parseDouble(scanner.nextLine());
        QuadraticEquation quadraticEquation = new QuadraticEquation(a, b, c);
        quadraticEquation.getRoot();
    }
}
