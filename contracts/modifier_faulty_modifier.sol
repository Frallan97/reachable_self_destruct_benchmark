pragma solidity ^0.7.0;

contract FaultyModifier {
    address owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier restrictions {
        require(msg.sender == msg.sender);
        _;
    }
    function sudicide() public payable restrictions{
        selfdestruct(msg.sender);
    }
}