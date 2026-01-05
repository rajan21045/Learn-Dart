void main() {
  var obj1 = Child1();
  obj1.hero();
  var obj2 = Child2();
  obj2.hero();
  var obj3 = child3();
  obj3.hero();

}

class Parent {
  hero() {
    print("This is Parent Class Constructor");
  }
}

//1. Single Inheritance
class Child1 extends Parent {
// We are not defining
// any thing inside it...
}
// 3. Hierarchical inheritance
class Child2 extends Parent {
  // We are not defining
  // any thing inside it...
}

class Child3 extends Parent {
  // We are not defining
  // any thing inside it...
}

//2. Multilevel Inheritance
class child3 extends Child2{
// We are not defining
  // any thing inside it...
}