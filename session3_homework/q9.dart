void main() {
  List<int> numbers = [2, 2, 3, 4, 4, 5, 6, 6];
  Set<int> nodublicate = numbers.toSet();
  if (numbers.length > nodublicate.length) {
    print('the dublication was removed');
  }
}
