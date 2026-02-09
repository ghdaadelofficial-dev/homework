class Course {
  String title;
  int duration;

  Course(this.title, [this.duration = 3]);
}

void main() {
  Course c1 = Course("Math", 6);
  Course c2 = Course("IT");

  print(c1.title);
  print(c1.duration);

  print(c2.title);
  print(c2.duration);
}