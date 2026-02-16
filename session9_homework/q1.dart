class vehicle {
  String _model = '';
  double _fuelCapacity = 50;
  vehicle(this._model, double capacity) {
    if (capacity > 0) {
      _fuelCapacity = capacity;
    } else
      print('error; keep previous values');
  }
  double get fuelCapacity => _fuelCapacity;
  String get modle => _model;
  double calculateFuel(double distance) {
    return distance * .1;
  }
}

class car extends vehicle {
  bool _isAcOn;
  car(String model, double capacity, this._isAcOn) : super(model, capacity);
  @override
  double calculateFuel(double distance) {
    double base = super.calculateFuel(distance);
    return _isAcOn ? base * 1.2 : base;
  }
}

class truck extends vehicle {
  double _loadWeight;
  truck(String model, double capacity, this._loadWeight)
    : super(model, capacity);
  @override
  double calculateFuel(double distance) {
    return distance * (.1 + (_loadWeight * 0.05));
  }
}

void main() {
  List<vehicle> types = [car('tesla', 60, true), truck('sozoki', 100, 15)];
  double distance = 400.0;
  for (var type in types) {
    double fuelNeed = type.calculateFuel(distance);
    print(
      '${type.modle} need capacity from fuel:${fuelNeed.toStringAsFixed(2)} L',
    );
    if (fuelNeed> type.fuelCapacity) {
      print('${type.modle} cannot complete trip tank is very small');
    }
  }
}
