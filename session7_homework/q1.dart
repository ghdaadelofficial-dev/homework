class City {
  String name;
  int population;

  City(this.name, this.population);
}

void main() {
  City c1 = City("Cairo", 20000000);
  City c2 = City("Alex", 5000000);

  print(c1.name);
  print(c1.population);

  print(c2.name);
  print(c2.population);
}