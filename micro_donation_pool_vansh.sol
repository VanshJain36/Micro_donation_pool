pragma solidity ^0.8.0;

contract CharityDonationPool {

    // The owner of the contract (charity)
    address public owner;

    // Event to log donations
    event DonationReceived(address indexed donor, uint256 amount);

    // Modifier to restrict access to the owner (charity) only
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the charity (owner) can withdraw funds");
        _;
    }

    // Set the owner to the contract creator (charity)
    constructor() {
        owner = msg.sender;
    }

    // Function to allow anyone to donate to the pool
    function donate() external payable {
        require(msg.value > 0, "Donation must be greater than zero");
        emit DonationReceived(msg.sender, msg.value);
    }

    // Function for the charity to withdraw the donated funds
    function withdraw(uint256 amount) external onlyOwner {
        require(amount <= address(this).balance, "Insufficient balance in the pool");
        payable(owner).transfer(amount);
    }

    // Function to check the balance of the donation pool
    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
