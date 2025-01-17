# Unhandled require statement in ownership transfer

This bug demonstrates an issue with the `require` statement in a Solidity contract's ownership transfer function. The `require` statement checks if the new owner is not the zero address.  However, if this condition is not met, the transaction will revert, and the ownership will not be transferred.  This code provides an example and a solution for this bug.

## Bug
The bug lies in the `transferOwnership` function. If `newOwner` is the zero address, the `require` statement will revert the transaction, preventing the ownership transfer.  However, no error handling is implemented to inform the caller of the failure.  Furthermore, the ownership is updated even if the require statement fails.

## Solution
The solution involves checking the return value of the `require` statement. If it returns `false`, the function reverts with a descriptive error message, ensuring the caller understands the reason for the failure. We also revert when the require statement fails.