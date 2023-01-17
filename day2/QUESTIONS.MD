1, The ledger canister is controlled by the Network Nervous System.


2, No idea


3, No idea


4, 'Nat' needs to be imported  at the top of the file  like this:  import Nat "mo:base/Nat";


5, the variable declaration  'var languages : [var Text]' needs to be inmutable, because the
function returns an immutable array. Correct code:

var languages : [Text] = ["English", "German",  "Chinese", "Japanese", "French"]


6, It actually works. It creates a new array, where the last element is the one added by the function.




