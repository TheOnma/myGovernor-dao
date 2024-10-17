# MyGovernor Project

This repository contains a Solidity-based governance contract system, including a custom governor contract, time-lock functionality, and a test suite for verification. It uses the Foundry framework for testing and OpenZeppelin's library for smart contract security and standards.

## 📚 Overview

The project implements a decentralized governance system that allows token holders to propose, vote, and execute actions through smart contracts. Key components include:

- **`MyGovernor`**: A custom governance contract that manages proposal creation, voting, and execution.
- **`TimeLock`**: A time-lock contract to secure actions before execution.
- **`GovToken`**: An ERC20 token with governance capabilities (voting, delegation, etc.).
- **`Box`**: A simple contract that stores values, serving as a target for governance proposals.

## 🛠️ Installation

To set up the project locally, follow these steps:

1. **Clone the repository**:

   ```bash
   git clone https://github.com/YourUsername/MyGovernor.git
   cd MyGovernor
   ```

2. **Install Dependencies**:

   Ensure you have [Foundry](https://book.getfoundry.sh/) installed:

   ```bash
   forge install
   ```

3. **Compile Contracts**:

   Compile the smart contracts using:

   ```bash
   forge build
   ```

4. **Run Tests**:

   Run the test suite to ensure everything works as expected:

   ```bash
   forge test -vvv
   ```

## 📜 Contracts

### MyGovernor.sol

A Solidity contract implementing governance functionality, allowing users to create and vote on proposals. It includes functions like `propose`, `queue`, `execute`, and `castVote`.

### TimeLock.sol

A time-lock contract that enforces a delay before executing successful proposals. This ensures transparency and allows token holders to react to upcoming changes.

### GovToken.sol

An ERC20 token contract that supports governance. Users can delegate their votes to themselves or others, which is crucial for proposal creation and voting.

### Box.sol

A simple contract used as a target of governance proposals. It includes a `store` function to update its value, showcasing how governance can change contract states.

## 🧪 Tests

The `MyGovernorTest` contract tests the complete governance flow, ensuring that:

- Proposals are correctly created and queued.
- Votes can be cast and counted.
- Proposals are executed after passing.
- Unauthorized users cannot bypass governance processes.

To run a specific test, use:

```bash
forge test --mt testGovernanceUpdatesBox -vvv
```

## 🚀 Usage

1. **Deploy Contracts**:

   Deploy `GovToken`, `MyGovernor`, and `TimeLock` contracts on a local or testnet blockchain.

2. **Mint and Delegate Tokens**:

   Allocate tokens to users and delegate voting power.

3. **Create Proposals**:

   Use `MyGovernor` to propose actions, such as updating values in the `Box` contract.

4. **Vote and Execute**:

   Token holders vote on proposals. If a proposal passes, it can be queued and executed through the `TimeLock` contract.

## 🛡️ Security

This project uses [OpenZeppelin](https://openzeppelin.com/contracts/) contracts for standardized and audited implementations of ERC20 tokens and governance features. However, always conduct your own audits before deploying to a production environment.

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](https://github.com/YourUsername/MyGovernor/issues).

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Make your changes.
4. Submit a pull request.

## 📝 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
