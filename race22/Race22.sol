
contract Example {
    // function callAndRevert(address target, bytes calldata payload) external {
    //         assembly (“memory-safe”) {
    //             call(gas(), target, callvalue(), add(payload, 32), payload, 0, 0)
    //             returndatacopy(0, 0, returndatasize())
    //             revert(0, returndatasize())
    //         }
    // }
       function test_callAndRevert(address target, bytes memory payload) external payable {
        vm.assume(target != address(0x0));
        assembly {
            let result := call(gas(), target, callvalue(), add(payload, 32), payload, 0, 0)
            returndatacopy(0, 0, returndatasize())
            revert(0, returndatasize())
        }
    }

}Continuing with the same contract, what are the consequences of annotating the assembly block as “memory-safe”?
A.
It’s a good practice to help auditors, and never affects the compiler’s behavior
B.
The bytes in payload are checked to be ABI-encoded before storing them in memory
C.
returndatacopy will revert if returndatasize is greater than zero, due to writing to Solidity’s reserved memory space
D.
Return bomb attacks are prevented due to safety checks introduced by the compiler on the size of the returned data copied to memory
E.
None of the above