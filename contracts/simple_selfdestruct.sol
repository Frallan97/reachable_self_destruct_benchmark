
pragma solidity ^0.4.0;

contract SimpleSuicide {

  function sudicide() {
    selfdestruct(msg.sender);
  }

}
