class Temperature {
  double celsius;

  Temperature(this.celsius);

  double toFahrenheit() {
    return celsius * 9 / 5 + 32;
  }
}

void main() {
  Temperature t = Temperature(25);
  print(t.toFahrenheit());
}