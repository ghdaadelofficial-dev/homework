

class Calculator {
  int num1;
  int num2;

  Calculator(this.num1, this.num2);

  void addNumbers() {
    print(num1 + num2);
  }
}

void main() {
  Calculator operation = Calculator(5, 3);
  operation.addNumbers();
}