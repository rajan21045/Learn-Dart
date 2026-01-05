class Hero {
  void greeting() {
    print("Hello Hero.");
  }
}

class Hero2 implements Hero {
  void greeting() {
    print("Hello\nTHis Is Hero Number Two");
  }
}

void main() {
  Hero2 hh = Hero2();
  hh.greeting();
}
