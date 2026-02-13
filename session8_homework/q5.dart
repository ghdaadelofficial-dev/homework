class Book {
  String? _title;
  int? _pages;

  set title(String title) {
    if (title.isNotEmpty) {
      _title = title;
    } else {
      print("Title cannot be empty!");
    }
  }

  set pages(int pages) {
    if (pages > 0) {
      _pages = pages;
    } else {
      print("Pages must be greater than 0!");
    }
  }

  String? get title =>this. _title;
 
  int get readingTime => _pages! * 2;

  void displayInfo() {
    print("Book Title: $_title");
    print("Estimated Reading Time: $readingTime minutes");
  }
}

void main() {
  Book myBook = Book();
  myBook.title = "The Dart Guide";
  myBook.pages = 150;

  myBook.displayInfo();
}
