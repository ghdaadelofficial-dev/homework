void analyzeList(List<int> numbers) {
  int max = numbers[0];
  int min = numbers[0];

  for (int num in numbers) {
    if (num > max) max = num;
    if (num < min) min = num;
  }

  print("Largest number = $max");
  print("Smallest number = $min");
  print("Difference = ${max - min}");
}

void main() {
  analyzeList([5, 3, 9, 1, 6]);
}