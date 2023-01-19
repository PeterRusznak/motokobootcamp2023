import Principal "mo:base/Principal";
import Buffer "mo:base/Buffer";
import HashMap "mo:base/HashMap";
import Iter "mo:base/Iter";

import List "mo:base/List";
actor{

    // let unique = func <T>(l : List.List<T>) : List.List<T> {
    //     l;
    // };

    // public query func unique_nat(l : List.List<Nat>) : async List.List<Nat> {
    //     return unique<Nat>(l);
    // };


    let  reverse = func <T>(l : List.List<T>) : List.List<T>{
        List.reverse<T>(l);
    };

    public query func revers_nat(l : List.List<Nat>) : async List.List<Nat> {
        return reverse<Nat>(l);
    };

    //------------------------------------------------------------

    public shared ({ caller }) func is_anynomous () :async Bool {
      Principal.isAnonymous(caller);
    };

    //-----------------------------------------------------------


    let find_in_buffer = func<T> (buf: Buffer.Buffer<T>, val: T, equal: (T,T) -> Bool) : async ?Nat{   
        return Buffer.indexOf<T>(val, buf, equal); 
    };


    //-------------------------------------------------------


    let usernames = HashMap.HashMap<Principal, Text>(0, Principal.equal, Principal.hash);

    public shared ({ caller }) func add_username(name : Text) : async () {
      usernames.put(caller, name);
    };

    public func get_usernames() : async [(Principal, Text)]{
      Iter.toArray<(Principal,Text)>(usernames.entries());
    };

}

