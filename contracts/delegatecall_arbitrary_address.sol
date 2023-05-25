pragma solidity ^0.4.24;
contract Exploitible {
  address owner;

  constructor() public {
    owner = msg.sender;  
  }

  function forward(address callee, bytes _data) public {
    require(callee.delegatecall(_data));
  }
}