void main() {
  List<int> numbers = [3, 7, 2, 9, 12, 4, 6];
  print('num divised by 3 is');
  for (int num in numbers) {
    if (num % 3 == 0) print(num);
  }
}
