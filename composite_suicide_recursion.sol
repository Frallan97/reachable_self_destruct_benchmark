pragma solidity ^0.5.0;

contract CompositeSuicide {
  address owner;
  bool locked;

  constructor() public {
        owner = msg.sender;
        locked = true;
    }


  function transferOwnership(address newOwner, int depth) public {
    if(depth == 0){
        owner = newOwner;
    }
    
    transferOwnership(newOwner,depth-1);
  }


  modifier onlyFriend {
    require(msg.sender == owner);
    _;
  }

  function restritctedSudicide() external onlyFriend {
    selfdestruct(msg.sender);
  }
}
