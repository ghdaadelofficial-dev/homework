import 'dart:developer';

void main() {
  int mark = 95;
  String grade;
  if (mark >= 90)
    grade = 'A';
  else if (mark >= 80)
    grade = 'B';
  else if (mark >= 70)
    grade = 'C';
  else
    grade = 'D';
  switch (grade) {
    case 'A':
      print('Exllent');
    case 'B':
      print('very good');
    case 'C':
      print('good');
    case 'D':
      print('weak');
    default:
      print('failed');
  }
}
