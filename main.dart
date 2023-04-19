import 'index.dart';

void main() {
// Instance of the class using inheritance
  var book = Adventure();
  book.Title = 'The Walking Fox';
  book.Author = 'Max Willer';
  book.pageNumber = 350;
  book.display();
  book.beingRead();
  book.notBeingRead();
  book.runTheLoop();

// Instance of the class that is using interface
  var book1 = Fiction();
  book1.Title = 'The Olive Tree';
  book1.Author = 'Bruno Simachulu';
  book1.display();
  book1.beingRead();
  book1.notBeingRead();
  book.runTheLoop();

// Instance of the class that in index.dart
  var book2 = Drama();
  book2.Title = 'Escaped';
  book2.Author = 'Musonda Mutale';
  book2.display();
  book2.beingRead();
  book2.notBeingRead();
  book.runTheLoop();
}

class Book {
  String? Title;
  String? Author;

  void display() {
    print(Title);
    print(Author);
  }

  void beingRead() {
    print('The book is being read.');
  }

  void notBeingRead() {
    print('The book is not being read.');
  }

// A method that demonstrates the use of a loop
  void runTheLoop() {
    for (int x = 1; x < 2; x++) {
      print('---');
    }
  }
}

// A class that implements inheritance and overrides an inherited method.
class Adventure extends Book {
  int? pageNumber;

//
  void beingRead() {
    print('The adventure book is being read.');
  }

  void notBeingRead() {
    print('The adventure book is not being read.');
  }
}

// A class that uses interface
class Fiction implements Book {
  String? Title;
  String? Author;

  void display() {
    print(Title);
    print(Author);
  }

  void beingRead() {
    print('The fictional book is being read.');
  }

  void notBeingRead() {
    print('The fictional book is not being read.');
  }

  void runTheLoop() {
    for (int x = 1; x < 2; x++) {
      print('---');
    }
  }
}
