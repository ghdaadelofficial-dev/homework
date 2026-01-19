void main() {
  List<int> numbers = [4, 4, 5, 6, 6, 7];
  Set<int> uniqeNumber = numbers.toSet();
  uniqeNumber.add(9);
  print(uniqeNumber);
  uniqeNumber.remove(6);
  print(uniqeNumber);
  print(uniqeNumber.contains(5));
}
