import Principal "mo:base/Principal";



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


    public shared ({ caller }) func is_anynomous () :async Bool {
      Principal.isAnonymous(caller);
    };
}

