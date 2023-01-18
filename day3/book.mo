module {

    public type Book = {
      title :Text;
      pages: Nat;
    };

    public func create_book(title : Text, pages: Nat) : async Book {
      return {title; pages}; 
    };

};