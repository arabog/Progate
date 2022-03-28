import java.util.Scanner;

class Main {
          public static void main(String[] args) {
                    Scanner scanner = new Scanner(System.in);
                    
                    Bicycle bicycle = new Bicycle();
                    bicycle.setName("Bianchi");
                    bicycle.setColor("Green");
                    
                    bicycle.printData();
                    
                    System.out.println("-----------------");
                    System.out.print("Enter distance to move: ");

                    int distanceTravelByBicycle = scanner.nextInt();
                    bicycle.run(distanceTravelByBicycle);
                    
                    System.out.println("=================");
                    Car car = new Car();
                    car.setName("Ferrari");
                    car.setColor("Red");
                    
                    car.printData();
                    
                    System.out.println("-----------------");
                    System.out.print("Enter distance to move: ");

                    int distanceTravelByCar = scanner.nextInt();
                    car.run(distanceTravelByCar);
                    
                    System.out.println("-----------------");
                    System.out.print("Enter amount to refuel: ");
                    
                    int fuelAdded = scanner.nextInt();
                    car.charge(fuelAdded);
          }
}