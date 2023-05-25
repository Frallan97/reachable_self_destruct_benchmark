pragma solidity ^0.7.0;

contract FaultyModifier {
    address owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(1 == (2/2));
        _;
    }
    function sudicide() public payable onlyOwner{
        selfdestruct(msg.sender);
    }
}