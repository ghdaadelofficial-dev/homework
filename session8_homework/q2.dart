class Car {
  String? _brand;
  int? _year;
  set brand(String brand) {
    if (brand.isNotEmpty) this._brand = brand;
  }

  String? get brand => this._brand;

  set year(int year) {
    if (year >= 1889) {
      this._year = year;
    }
  }

  int? get year => this._year;
}

void main() {
  Car c1 = Car();
    Car c2 = Car();
  c1.brand = 'BMW';
  c1.year = 1900;
  print(c1.brand);
  print(c1.year);

  c2.brand = '';
  c2.year = 1800;

}
