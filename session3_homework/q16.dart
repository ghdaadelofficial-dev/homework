void main() {
  void main() {
    int a = 10;
     int b = 20;
    int c = 30;

    bool exp1 = a < b && c > b;
    bool exp2 = a == 10 || b == 15;
    bool exp3 = c <= 25;

    print(exp1);
    print(exp2);
    print(exp3);

    if (exp1) {
      print('Rule passed');
    } else {
      print('Rule failed');
    }
  }
}
