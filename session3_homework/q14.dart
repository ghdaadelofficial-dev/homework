void main() {
  List<int> scors = [20, 30, 40];
  if (scors == null || scors.isEmpty)
    print('no score');
  else {
    int sum;
    sum = scors.first + scors.last;
    print(sum);
    print(sum > 40);
  }
}
