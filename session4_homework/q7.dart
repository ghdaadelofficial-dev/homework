void main() {
  List<int> numbers = [10, 0, 20, 30];
  int sum = 0;
  for (int num in numbers) {
    if (num != 0) sum += num;
  }
  print('sum of numbers is $sum');
}
