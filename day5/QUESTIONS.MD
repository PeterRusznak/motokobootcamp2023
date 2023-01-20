1, True, we can prevent the heap being erased during upgrades by using a stable heap.

2, I think we need 2 rounds of consensus. One from A -> B and another from B to C.

3, I guess it should be if neither canister modifies the data. Having said this, the compiler gave me errors, when I tried to add the query modifier to the function doing intercanister call.