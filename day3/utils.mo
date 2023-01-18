import Array "mo:base/Array";
import Int "mo:base/Int";
import Buffer "mo:base/Buffer";

actor utils{

    public query func second_maximum(array : [Int]) : async  Int{
        switch(array.size()) {
        case(1 or 0) {
            return -1; // Not specified what should we return
            };
        case(_) { 
            return Array.reverse(Array.sort(array, Int.compare))[1];
        };
        };    
    };


    public query func remove_event(array : [Nat]) : async [Nat]{   
        return Array.filter<Nat>(array, func x = x % 2 != 0);
    };



    let drop = func <T>(xs : [T], n : Nat) : [T] {
      if(n >= xs.size()){
        return [];
      };

      var buff = Buffer.fromArray<T>(xs : [T]);
      var subBuff = Buffer.subBuffer<T>(buff, n, buff.size()-n); 
      return Buffer.toArray(subBuff);
    };


    public query func nat_arr_size_even(array : [Text], num: Nat) : async [Text] {
        return drop<Text>(array, num);
    };

};


