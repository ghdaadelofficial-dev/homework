void main(){
  
  double price = 50;
  String currency = 'USD';

  String priceText = price.toString();
  priceText = priceText.padLeft(6, '0');

  print('$priceText $currency');
  print(priceText.length);


}