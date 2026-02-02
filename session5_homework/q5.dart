void multiplicationTable(int n) {
  int sum = 0;

  for (int i = 1; i <= 10; i++) {
    int result = n * i;
    print("$n x $i = $result");
    sum += result;
  }

  print("Sum of table = $sum");
}

void main() {
  multiplicationTable(5);
}