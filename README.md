# Crowdfunding Smart Contract

This smart contract is a simple crowdfunding platform implemented in Solidity. It allows contributors to fund the project by making contributions, and it enforces certain rules for the contributions.

## Contract Details

- **Funding Goal:** 100 Ether
- **Total Funds Raised:** 0 Ether (initially)

## Functionality

### Contribute

The `contribute` function allows contributors to make contributions to the crowdfunding campaign. Here are the key features:

- The function is marked as `external` and `payable`, indicating that it can receive Ether as part of the function call.
- Contributions must be at least 10 Ether; otherwise, the function reverts with the message "Minimum contribution is 10."
- It checks if the funding goal has already been reached using a `require` statement. If the goal is reached, the function aborts with the message "Funding goal already reached."
- The contributed amount is added to the `totalFunds` variable.

### Error Handling

- Contributions less than 10 Ether trigger a `revert` with the error message "Minimum contribution is 10."
- If the funding goal is already reached, a `require` statement aborts the function with the message "Funding goal already reached."
- An `assert` statement is used to ensure the correct update of the `totalFunds` variable after a successful contribution.

