void countWordsAndChars(String sentence) {
  int words = sentence.split(' ').length;
  int chars = sentence.replaceAll(' ', '').length;

  print("Words count = $words");
  print("Characters count = $chars");
}

void main() {
  countWordsAndChars("Hello Dart World");
}