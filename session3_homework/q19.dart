void main() {
  List<String> names = ['Ahmed', 'Ali', 'sirag', 'Ali', 'Ahmed'];
  Set uniqueNames = names.toSet();
  Map<String, int> nameCounts = {};

  for (var name in names) {
    nameCounts[name] = nameCounts[name] ?? 0 + 1;
  }

  print('Unique names: $uniqueNames');
  print('Name counts: $nameCounts');
  
  if (names.length > uniqueNames.length) {
    print('The list contains duplicate values.');
  }
  if ((nameCounts['Ali'] ?? 0) > 1) {
    print('Ahmed appears more than once');
  }
}
