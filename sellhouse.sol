// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract SellingHouse {
    string public house = "Small house";
    address public owner;
    uint public price;
    bool public status = false;   // for selling ?
    bool public isSold = false;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "UnAuthorized");
        _;
    }

    // The house is for sale at the specified price.
    function listHouse(uint _price) external onlyOwner returns (bool) {
        require(!status, "House already listed");
        price = _price;
        status = true;
        return true;
    }

    // the buyer pays & the contract holds it ;
    function buyHouse() external payable {
        require(status, "House not for sale");
        require(!isSold, "House already sold");
        require(msg.value == price, "Invalid amount");

        status = false; //stop selling 
    }

    // the seller buy it & the contract holds it 
    function confirmSale() external onlyOwner returns (bool) {
        require(address(this).balance == price, "No funds to withdraw");
        require(!isSold, "Already sold");

        payable(owner).transfer(address(this).balance);
        isSold = true;
        return true;
    }
}
