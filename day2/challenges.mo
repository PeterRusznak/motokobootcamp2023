import Array "mo:base/Array";
import Char "mo:base/Char";
import Debug "mo:base/Debug";
import Iter "mo:base/Iter";
import Text "mo:base/Text";
import Nat "mo:base/Nat";





actor {
  

  public query func average_array(array : [Int]) : async Int {
    var sum :Int = 0;
    for(num in array.vals()){
      sum += num;
    };
    return sum / array.size();
  };


  public query func count_character(t : Text, c : Char) : async Nat {
    var counter :Nat = 0;

    for (ch in t.chars()){
     
      if(Char.toText(ch) == Char.toText(c)){

        counter += 1;
      };
    };
    return counter; 
  };


public query func factorial(n : Nat) : async Nat {

    if(n == 0){
      return 0
    };

    var counter = 1; 
    let i = Iter.range(1, n);

    for(number in i){
      counter *= number
    };

    return counter;
};

public query func number_of_words(t : Text): async Nat {
   
    var counter = 0; 
    type Pattern = Text.Pattern;
    let p: Pattern = #char(' ');

    var i = Text.split(t, p);

    for(words in i){
      counter += 1;
    };

    return counter;
};


public query func find_duplicates(a : [Nat]) : async [Nat] {

    var ret : [Nat] = [];
    
    for(i in Iter.range(0, a.size()-1 )) {

        for(j in Iter.range(i+1, a.size()-1)){

          if(a[i] == a[j]){
             ret := Array.append<Nat>(ret, [a[j]]);
          };

        };
    };
    return ret
};


public query func convert_to_binary(n : Nat) : async Text {
   
    var result = "";
    var quotient = n;
    while (quotient > 0) {
        var remainder = quotient % 2;
        result := Nat.toText(remainder) # result;
        quotient := quotient / 2;
    };
    return result;
};
 


}