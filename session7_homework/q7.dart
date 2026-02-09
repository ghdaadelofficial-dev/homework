import 'dart:io';

void main() {
  int num = int.parse(stdin.readLineSync()!);

  while (num >= 10) {
    int sum = 0;

    while (num > 0) {
      sum = sum + (num % 10);
      num = num ~/ 10;
    }

    num = sum;
  }

  print(num);
}