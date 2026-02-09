import 'dart:io';

void main() {
  String sentence = stdin.readLineSync()!;
  List<String> words = [];
  String word = "";

  for (int i = 0; i < sentence.length; i++) {
    if (sentence[i] != ' ') {
      word = word + sentence[i];
    } else {
      words.add(word);
      word = "";
    }
  }
  words.add(word);

  int uniqueCount = 0;

  for (int i = 0; i < words.length; i++) {
    int count = 0;

    for (int j = 0; j < words.length; j++) {
      if (words[i] == words[j]) {
        count++;
      }
    }

    if (count == 1) {
      print(words[i]);
      uniqueCount++;
    }
  }

  print(uniqueCount);
}