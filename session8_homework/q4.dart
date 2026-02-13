class Product {
  String? _name;
  double? _price;

  // Setter for Name
  set name(String name) {
    if (name.isNotEmpty) {
      _name = name;
    } else {
      print(" Name cannot be empty!");
    }
  }

  // Setter for Price
  set price(double price) {
    if (price >= 0) {
      _price = price;
    } else {
      print("Price cannot be negative!");
    }
  }

  // Getter for discountedPrice (10% discount)
  double get discountedPrice => _price! * 0.9;

 
  String? get name =>this. _name;
  double? get price =>this. _price;
}

void main() {
  Product p = Product();
  p.name = "Laptop"; 
  p.price = 1000.0;

  print("Product: ${p.name}");
  print("Original Price: \$${p.price}");
  print("Discounted Price: \$${p.discountedPrice}");
}
