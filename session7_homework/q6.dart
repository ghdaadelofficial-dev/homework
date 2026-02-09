class NumberCheck {
  int value;

  NumberCheck(this.value);

  bool isEven() {
    if (value % 2 == 0) {
      return true;
    } else {
      return false;
    }
  }
}

void main() {
  NumberCheck n = NumberCheck(10);
  print(n.isEven());
}