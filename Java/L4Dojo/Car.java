class Car {
          private String name;
          private String color;
          private int distance = 0;
          private int fuel = 100;
          
          private int remainingFuel;
          
          public String getName() {
                    return this.name;
          }
          
          public void setName(String name) {
                    this.name = name;
          }
          
          public String getColor() {
                    return this.color;
          }
          
          public void setColor(String color) {
                    this.color = color;
          }
          
          public void printData(){
                    System.out.println("【Car Info】");
                    System.out.println("Name: " + this.getName());
                    System.out.println("Color: " + this.getColor());
                    System.out.println("Distance: " + this.distance + "km");
                    System.out.println("Fuel: " + this.fuel + "L");
          }
          
          
          public void run(int distance) {
                    System.out.println("Moving " + distance + "km ...");
                    this.remainingFuel = fuel - distance;
                    
                    if(distance > fuel) {
                              System.out.println("Not enough fuel");
                              System.out.println("Distance: " + 0 + "km");
                              System.out.println("Fuel: " + fuel + "L");
                    } else  {
                              System.out.println("Distance: " + distance + "km");
                              System.out.println("Fuel: " + (fuel - distance)  + "L");
                    }
          }
          
          public void charge(int refuel) {
                    System.out.println("Adding " + refuel + "L ...");
                    
                    if(refuel <= 0) {
                              System.out.println("No fuel added");
                              System.out.println("Remaining Fuel: " + (remainingFuel)  + "L");
                    } else if ((refuel + remainingFuel) >= fuel) {
                              System.out.println("Tank now full");
                              System.out.println("Remaining Fuel: " + fuel  + "L");
                    } else {
                              System.out.println("Remaining Fuel: " + (remainingFuel + refuel)  + "L");
                    }            
          }

}