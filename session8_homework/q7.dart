import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  
  if (input == null || input.isEmpty) return;

  List<String> rawNumbers = input.split(' ');
  List<int> numbers = [];
  for (var str in rawNumbers) {
    numbers.add(int.parse(str));
  }

  int maxNum = numbers[0];
  int minNum = numbers[0];
  int sum = 0;
  int evenCount = 0;
  int oddCount = 0;

  for (int num in numbers) {
    if (num > maxNum) maxNum = num;
    if (num < minNum) minNum = num;
    
    sum += num;
    
    if (num % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }

  double average = sum / numbers.length;

  List<int> aboveAvg = [];
  for (int num in numbers) {
    if (num > average) {
      aboveAvg.add(num);
    }
  }

  print("Largest: $maxNum");
  print("Smallest: $minNum");
  print("Difference: ${maxNum - minNum}");
  print("Average: ${average.toStringAsFixed(2)}");
  print("Above Average: $aboveAvg");
  print("Even Count: $evenCount");
  print("Odd Count: $oddCount");
}