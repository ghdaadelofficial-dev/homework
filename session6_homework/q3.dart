class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void printDetails() {
    print("Name: $name, Age: $age");
  }
}

void main() {
  Person p = Person("Ali", 20);
  p.printDetails();

  p.age = 25;
  p.printDetails();
}