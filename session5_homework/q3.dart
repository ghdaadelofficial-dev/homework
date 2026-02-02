void reverseAndVowels(String word) {
  String reversed = word.split('').reversed.join('');
  int vowels = 0;

  for (int i = 0; i < word.length; i++) {
    if ("angry".contains(word[i])) {
      vowels++;
    }
  }

  print("Reversed word: $reversed");
  print("Vowels count: $vowels");
}

void main() {
  reverseAndVowels("Dart");
}