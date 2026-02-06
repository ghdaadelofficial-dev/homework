class Product {
  String name;
  double price;

  Product(this.name, [this.price = 0]);

  void printDetails() {
    print("Name: $name, Price: $price");
  }
}

void main() {
  Product p1 = Product("Laptop", 15000);
  Product p2 = Product("Mouse");

  p1.printDetails();
  p2.printDetails();
}