void main() {
  List<Map<String, dynamic>> students = [
    {'name': 'Ahmed', 'grade': 90},
    {'name': 'mohammed', 'grade': 95},
  ];
  print(students[1]['grade']);
  num sum = students[0]['grade'] + students[1]['grade'];
  double average = sum / 2;
  print(average);
}
