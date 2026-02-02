void oddNumbers(int n) {
  int count = 0;

  for (int i = 1; i <= n; i++) {
    if (i % 2 != 0) {
      print(i);
      count++;
    }
  }

  print("Count of odd numbers = $count");
}

void main() {
  oddNumbers(10);
}