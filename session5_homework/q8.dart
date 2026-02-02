void digitOperations(int number) {
  int sum = 0;
  int maxDigit = 0;

  while (number > 0) {
    int digit = number % 10;
    sum += digit;
    if (digit > maxDigit) maxDigit = digit;
    number ~/= 10;
  }

  print("Sum of digits = $sum");
  print("Largest digit = $maxDigit");
}

void main() {
  digitOperations(528);
}