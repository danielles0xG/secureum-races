[Q1] InSecureum implements
(A): Atypical decimals value
(B): Non-standard decreaseAllowance and increaseAllowance
(C): Non-standard transfer
(D): None of the above

A, non 18 decimals, recommended for precision issues
B, decreaseAllowance wont allow to reset to 0 allowances since current allowance requires grater value than allowance value to subtract


[Q2] In InSecureum
(A): decimals() can have pure state mutability instead of view
(B): _burn() can have external visibility instead of internal
(C): _mint() should have internal visibility instead of external
(D): None of the above

A, Gas savings by making it pure
C, anyone will be able to mint

[Q3] InSecureum transferFrom()
(A): Is susceptible to an integer underflow
(B): Has an incorrect allowance check
(C): Has an optimisation indicative of unlimited approvals
(D): None of the above

A, due unchecked block at account balance update
B, cannot check for same owner allowances
C, unchecked can cause underflow then int(max) will be approved

[Q4] In InSecureum
(A): increaseAllowance is susceptible to an integer overflow
(B): decreaseAllowance is susceptible to an integer overflow
(C): decreaseAllowance does not allow reducing allowance to zero
(D): decreaseAllowance can be optimised with unchecked{}

C, decreaseAllowance wont allow to reset to 0 allowances since current allowance requires grater value than allowance value to subtract
d, _allowances[owner][spender] += amount; ??
 no need to check for overflow since its a nested mapping

[Q5] InSecureum _transfer()
(A): Is missing a zero-address validation
(B): Is susceptible to an integer overflow
(C): Is susceptible to an integer underflow
(D): None of the above

C, underflow due to unchecked

[Q6] InSecureum _mint()
(A): Is missing a zero-address validation
(B): Has an incorrect event emission
(C): Has an incorrect update of account balance
(D): None of the above

A, missing a zero-address validation
C, incorrect event emission
D, incorrect update of account balance

[Q7] InSecureum _burn()
(A): Is missing a zero-address validation
(B): Has an incorrect event emission
(C): Has an incorrect update of account balance
(D): None of the above

B, incorrect event emission
C - ?

[Q8] InSecureum _approve()
(A): Is missing a zero-address validation
(B): Has incorrect error messages
(C): Has an incorrect update of allowance
(D): None of the above

B From and to in error message is inverse, sender
    meant TO approve the spender FROM owner
C incorrect update of allowance since it adds to previous allowance amount