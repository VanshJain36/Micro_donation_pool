# Micro Donations Pool

## Project Description
The **Micro Donations Pool** is a decentralized application that allows users to contribute small donations to a common pool, which is designated for charitable purposes. The contract collects and stores donations in a secure pool, with the ability for the charity (owner) to withdraw the funds as needed. 

The contract ensures transparency and accountability by logging every donation made and restricts the ability to withdraw funds to the charity only.

## Smart Contract Address
The smart contract is deployed on the Ethereum blockchain, and can be interacted with through the following address:

**Smart Contract Address**:  
`0x9aBD8137566fF9cd2b10e71aC83a21f2f3510428`

## How it Works

1. **Donations**: Anyone can send ETH to the contract to make a donation to the charity pool.
2. **Withdrawals**: Only the charity (contract owner) can withdraw the funds accumulated in the donation pool.
3. **Transparency**: Every donation made is logged via an event, ensuring the donation process is transparent.

## Interacting with the Contract

To interact with the **Micro Donations Pool** contract, you can use any Ethereum-compatible wallet (such as MetaMask) to send ETH to the contract's address. You can also interact with the contract directly through a web3 interface like Remix or through your dApp.

### Donations
To donate, simply send any amount of ETH to the contract address.

### Withdrawals
The charity (owner) can withdraw funds by calling the `withdraw(uint256 amount)` function. Only the owner (charity) has access to this functionality.

## Technologies Used

- **Solidity** for smart contract development.
- **Ethereum blockchain** for deployment and transaction processing.
- **Web3.js** (or any Ethereum-compatible library) for interacting with the contract.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

