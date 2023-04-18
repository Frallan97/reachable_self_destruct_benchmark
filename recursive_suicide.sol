pragma solidity ^0.5.0;

contract RecursiveSuicide {
  address owner;
  bool locked;

  constructor() public {
        owner = msg.sender;
        locked = true;
    }


  function recursiveSudicide(int depth) public {
    if(depth == 0){
        selfdestruct(msg.sender);
    }
    recursiveSudicide(depth-1);
  }

}
