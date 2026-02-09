class Employee {
  String name;
  int salary;

  Employee(this.name, this.salary);

  void giveRaise(int amount) {
    salary = salary + amount;
  }
}

void main() {
  Employee e = Employee("Ali", 3000);
  e.giveRaise(500);
  print(e.salary);
}