import 'dart:math';

void guessNumber(int userGuess) {
  int randomNumber = Random().nextInt(20) + 1;

  if (userGuess == randomNumber) {
    print("Correct");
  } else {
    print("Wrong ");
    print("Correct number was $randomNumber");
  }
}

void main() {
  guessNumber(7);
}