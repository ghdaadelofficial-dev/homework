class Grade {
  int? _score;
  set score(int score) {
    if (score >= 0 && score <= 100) {
      this._score = score;
    } else
      print('invalid score');
  }

  int? get score => this._score;
  bool get isPass => (_score ?? 0) >= 50;
}

void main() {
  Grade grade1 = Grade();
  grade1.score = 100;
  print(grade1.score);
  grade1.score = 200;
  grade1.score = 50;
  print(grade1.score);
  grade1.score = -50;
}
