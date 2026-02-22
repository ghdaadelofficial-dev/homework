class FoodItem {
  String name;
  double price;
  String category;

  FoodItem(this.name, this.price, this.category);
}

class Order {
  List<FoodItem> _selectedItems = [];

  void addItem(FoodItem item) {
    _selectedItems.add(item);
    print("${item.name} added to your order.");
  }


  double calculateTotal() {
    double total = 0;
    for (var item in _selectedItems) {
      total += item.price;
    }
    return total;
  }


  void showOrderSummary() {
    if (_selectedItems.isEmpty) {
      print("Your order is empty.");
      return;
    }
    print("\n--- Your Order ---");
    for (var item in _selectedItems) {
      print("${item.name} (${item.category}) - \$${item.price}");
    }
    print("------------------");
    print("Total Price: \$${calculateTotal()}");
  }
}

void main() {

  var pizza = FoodItem("Margherita Pizza", 12.5, "Pizza");
  var burger = FoodItem("Cheese Burger", 8.0, "Burgers");
  var coke = FoodItem("Coca Cola", 2.0, "Drinks");

 
  var myOrder = Order();
  
  myOrder.addItem(pizza);
  myOrder.addItem(coke);
  
  myOrder.showOrderSummary();
}