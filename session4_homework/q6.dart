void main() {
  int num = 6;
  int fact = 1;
  for (int i = 1; i <= num; i++) {
    fact *= i;
  }
  print('factorial of 6 is $fact');
}
