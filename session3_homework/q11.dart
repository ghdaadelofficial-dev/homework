void main() {
  num price = 3000;
  num discount;
  bool isStudent = true;
  bool hasCobon = true;
  double threshold = 250;
  if (isStudent) {
    discount = price * .2;

    if (hasCobon) {
      discount = discount + 10;
      price = price - discount;
    }
    print('total price equal $price');
  } else if (price > threshold) {
    discount = price * .1;
    price = price - discount;
    print(price);
  }
}
