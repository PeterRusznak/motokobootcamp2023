import Book "book";
import List "mo:base/List";

actor {


    type Book = Book.Book;
    var booklist = List.nil<Book>();

    public func add_book(book : Book): async (){
      booklist := List.push<Book>(book, booklist);
    };

    public func get_books(): async [Book]{
      return List.toArray(booklist);
    }

};