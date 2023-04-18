pragma solidity ^0.5.0;

contract CompositeSuicide {
  address owner;

  constructor() public {
        owner = msg.sender;
    }

  modifier onlyFriend {
    require(msg.sender == owner);
    _;
  }

  function transferOwnership(address newOwner) public {
    owner = newOwner;
  }

  function restritctedSudicide() external onlyFriend {
    selfdestruct(msg.sender);
  }
}
