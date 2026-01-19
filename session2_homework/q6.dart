void main() {
  List<String> animals = ['cat', 'dog', 'kamel'];
  animals.add('fish');
  animals.removeLast();
  animals[1] = 'bird';
  print(animals.first);
  print(animals.last);
  print(animals.length);
}
