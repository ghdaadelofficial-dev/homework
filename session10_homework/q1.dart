class Note {
  String title;
  String content;
  DateTime dateCreated;

  
  Note(this.title, this.content) : dateCreated = DateTime.now();

  @override
  String toString() {
    return 'Date: ${dateCreated.toString().substring(0, 16)}\nTitle: $title\nContent: $content\n---';
  }
}

class NotesManager {
  List<Note> _notes = [];
  void addNote(String title, String content) {
    _notes.add(Note(title, content));
    print("Note added successfully!");
  }


  void listAllNotes() {
    if (_notes.isEmpty) {
      print("No notes found.");
      return;
    }
    print("\n--- All Notes ---");
    for (var note in _notes) {
      print(note);
    }
  }

 
  void searchByTitle(String searchTitle) {
    var results = _notes.where((note) => 
      note.title.toLowerCase().contains(searchTitle.toLowerCase())).toList();

    if (results.isEmpty) {
      print("No notes found with title: $searchTitle");
    } else {
      print("\n--- Search Results ---");
      for (var note in results) {
        print(note);
      }
    }
  }
}

void main() {
  var myApp = NotesManager();
  
  myApp.addNote("Shopping", "Buy milk and eggs");
  myApp.addNote("Study", "Finish Dart OOP lesson");
  
  myApp.listAllNotes();
  
  myApp.searchByTitle("Study");
}