void main() {

  String text = 'EGP 12.50';
  String deletString = text.replaceAll('EGP', '');
  double valueInDecimal = double.parse(deletString);
  print(valueInDecimal);

}
