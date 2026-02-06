import 'dart:io';

void main() {
  List<int> numbers = [];

  for (int i = 0; i < 6; i++) {
    int x = int.parse(stdin.readLineSync()!);
    numbers.add(x);
  }

  int largest = numbers[0];
  int secondLargest = numbers[0];

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      secondLargest = largest;
      largest = numbers[i];
    } else if (numbers[i] > secondLargest && numbers[i] != largest) {
      secondLargest = numbers[i];
    }
  }

  print("Largest: $largest");
  print("Second Largest: $secondLargest");
}