pragma solidity ^0.5.0;

contract CompositeSuicide {
  address owner;
  bool locked;

  constructor() public {
        owner = msg.sender;
        locked = true;
    }


  function transferOwnership(address newOwner) public {
    require(locked == false);
    owner = newOwner;
  }

  function passwordProtectedUnlock(int key) internal {
    require(key == 8765);
    locked = false;
  }


  modifier onlyFriend {
    require(msg.sender == owner);
    _;
  }

  function restritctedSudicide() external onlyFriend {
    selfdestruct(msg.sender);
  }
}
