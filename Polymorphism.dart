void main() {
  var myPizza = Pizza();
  myPizza.heat();

  var mySalad = Salad();
  mySalad.heat();
}

class Food {
  void heat() {
    print("This Food is being heated");
  }
}

class Pizza extends Food {
  @override
  void heat() {
    print("Heating Pizza at 400 degrees for 10 minutes");
  }
}
class Salad extends Food {
  @override
  void heat() {
    print("Heating Salad at 200 degrees for 5 minutes");
  }
}