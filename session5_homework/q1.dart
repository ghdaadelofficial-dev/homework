
  void sumAverageCompare(int a, int b, int c) {
  int sum = a + b + c;
  double average = sum / 3;

  print("Sum = $sum");
  print("Average = $average");

  if (average > 50) {
    print("Average is greater than 50");
  } else {
    print("Average is not greater than 50");
  }
}

void main() {
  sumAverageCompare(40, 60, 80);
}

