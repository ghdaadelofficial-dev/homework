void main() {
  int a = 7;
  int b = 7;
  int c = 10;
  bool result;
  result = (a != c) || (b >= a);
  if (result) print('result of expression $result');
}
