pragma solidity >=0.4.2 <0.6.0;

contract geniusToken {
    // Constructor
    // Set the total number of tokens
    // Read the total number of tokens
    uint256 public totalSupply; // this is a state variable

    constructor() public {
        totalSupply = 1000000;
    }
}