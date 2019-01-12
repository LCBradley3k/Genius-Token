pragma solidity >=0.4.2 <0.6.0;

contract geniusToken {

    // Name
    string public name = "Genius Token";

    //Symbol
    string public symbol = "GNS";

    // Standard
    string public standard = "Genius Token v1.0";

    // Constructor
    // Set the total number of tokens
    // Read the total number of tokens
    uint256 public totalSupply; // this is a state variable

    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value
    );

    mapping(address => uint256) public balanceOf;

    constructor(uint256 _initialSupply) public {
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
        // allocate the initial supply
    }

    // Transfer
    function transfer(address _to, uint256 _value) public returns (bool) {
        // Exception if account doesn't have enough
        // if fails, any gas not used up to this point will be refunded to the sender
        require(balanceOf[msg.sender] >= _value);

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        // Transfer Event
        emit Transfer(msg.sender, _to, _value);

        return true;
    }
}