import 'dart:math';

class Shape {
  double area() => 0.0;
}

//circle
class circle implements Shape {
  double _radius = 0.0;
  circle(double r) {
    if (r > 0)
      _radius = r;
    else
      print('keep prevous');
  }
  @override
  double area() => pi * _radius * _radius;
}
// squar

class squar implements Shape {
  double _side = 0.0;
  squar(double s) {
    if (s > 0)
      _side = s;
    else
      print('keep prevous');
  }
  @override
  double area() => _side * _side;
}

// rectangle
class rectangle implements Shape {
  double _width = 0.0;
  double _height = 0.0;
  rectangle(this._width, this._height);
   
    @override
    double area() => _width * _height;
  
}

void main() {
  List<Shape> shapes = [circle(5), squar(7), rectangle(10, 5)];
  double totalArea = 0;
  for (var shape in shapes) {
    totalArea += shape.area();
  }
  //tiered pricing:
  double cost = 0;
  double remainingArea = totalArea;

  double tier1 = (remainingArea > 50) ? 50 : remainingArea;
  cost += tier1 * 1.50;
  remainingArea -= tier1;

  if (remainingArea > 0) {
    double tier2 = (remainingArea > 100) ? 100 : remainingArea;
    cost += tier2 * 1.25;
    remainingArea -= tier2;
  }

  if (remainingArea > 0) {
    cost += remainingArea * 1.00;
  }

  print("Total Area: ${totalArea.toStringAsFixed(2)} units");
  print("Total Cost: \$${cost.toStringAsFixed(2)}");
}
