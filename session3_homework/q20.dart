void main() {
  int age = 17;
  bool hasParent = true;
  String area = 'restricted';

  bool canEnter = true;

  if (age < 18) {
    if (hasParent) {
       canEnter = true;
    } else {
      canEnter = false;
    }
  } else {
    canEnter  = true;
  }

  if (canEnter ) {
    switch (area) {
      case 'general':
        print(' You are entering the General Area.');
        break;
      case 'restricted':
        print(' You are entering the Restricted Area.');
        break;
      default:
        print('Error: Invalid area selected.');
    }
  }
}