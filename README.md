# 🏠 SellingHouse Smart Contract

## ℹ️ Description

SellingHouse is a simple Ethereum smart contract that simulates the sale of a house. It allows the contract owner to list the house for sale at a fixed price, and a buyer can purchase it by sending the exact amount in Ether. The sale must be confirmed by the seller to finalize the transaction and transfer the funds.

---

## ⚙️ Core Functions

### ✅ `listHouse(uint price)`
- Allows the owner to list the house for sale.
- Can only be called by the contract owner.

### 💸 `buyHouse()`
- Allows a buyer to purchase the house by sending the exact price in Ether.
- Disables further purchases once payment is made.

### 🔐 `confirmSale()`
- Allows the seller to confirm the sale and withdraw the payment.
- Finalizes the transaction and marks the house as sold.

---

## 🔒 Access Control

- Only the contract **owner** can:
  - List the house.
  - Confirm the sale and withdraw funds.

---

## 🧪 Use Case Example

1. The owner deploys the contract.
2. Calls `listHouse(3 ether)` to put the house on sale.
3. A buyer sends exactly `3 ether` to call `buyHouse()`.
4. The owner confirms the sale by calling `confirmSale()` and receives the payment.

---

## 🧱 Deployment Requirements

- Solidity ^0.8.0
- Ethereum-compatible network (e.g., Goerli, Sepolia)
- Recommended tools: [Remix](https://remix.ethereum.org), [Hardhat](https://hardhat.org), or [Truffle](https://trufflesuite.com)

---

## 📃 License

This project is licensed under the [MIT License](LICENSE).

---

## ✍️ Author

**@lostbrain404**  
[GitHub Profile](https://github.com/lostbrain404)
