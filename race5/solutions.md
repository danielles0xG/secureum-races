[Q1] InSecureum balanceOf()
(A): May be optimised by caching state variable in local variable
(B): May be optimised by changing state mutability from view to pure
(C): May be optimised by changing its visibility to external
(D): None of the above

D: None of the above

[Q2] In InSecureum, array lengths mismatch check is missing in
(A): balanceOfBatch()
(B): _safeBatchTransferFrom()
(C): _mintBatch()
(D): _burnBatch()

A,B,C,D: All of them need param array length matching check

[Q3] The security concern(s) with InSecureum _safeTransferFrom() is/are
(A): Incorrect visibility
(B): Susceptibility to an integer underflow
(C): Missing zero-address validation
(D): None of the above

A, must be internal _



[Q4] The security concern(s) with InSecureum _safeBatchTransferFrom() is/are
(A): Missing array lengths mismatch check
(B): Susceptibility to an integer underflow
(C): Incorrect balance update
(D): None of the above


[Q5] The security concern(s) with InSecureum _mintBatch() is/are
(A): Missing array lengths mismatch check
(B): Incorrect event emission
(C): Allows burning of tokens
(D): None of the above


[Q6] The security concern(s) with InSecureum _burn() is/are
(A): Missing zero-address validation
(B): Susceptibility to an integer underflow
(C): Incorrect balance update
(D): None of the above


[Q7] The security concern(s) with InSecureum _doSafeTransferAcceptanceCheck() is/are
(A): isContract check on incorrect address
(B): Incorrect check on return value
(C): Call to incorrect isContract implementation
(D): None of the above



[Q8] The security concern(s) with InSecureum isContract() implementation is/are
(A): Incorrect visibility
(B): Incorrect operator in the comparison
(C): Unnecessary because Ethereum only has Contract accounts
(D): None of the above
