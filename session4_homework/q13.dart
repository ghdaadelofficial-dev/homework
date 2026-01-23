void main() {
  List<String> names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];
  Map<String, int> count = {};
  for (var name in names) {
    if (count.containsKey(name))
      count[name] = count[name]! + 1;
    else
      count[name] = 1;
  }
  for (var name in count.keys) {
    if (count[name]! > 1) print(name);
  }
}
