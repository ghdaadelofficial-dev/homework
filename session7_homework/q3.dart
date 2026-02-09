class Movie {
  String title;
  int rating;

  Movie(this.title, this.rating);
}

void main() {
  List<Movie> movies = [
    Movie("A", 8),
    Movie("B", 6),
    Movie("C", 9),
    Movie("D", 7),
  ];

  for (int i = 0; i < movies.length; i++) {
    if (movies[i].rating > 7) {
      print(movies[i].title);
    }
  }
}