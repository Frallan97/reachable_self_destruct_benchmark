pragma solidity ^0.4.0;

contract PasswordSuicide {
  function sudicideAnyone(int key) {
    require(key == 5321643);
    selfdestruct(msg.sender);
  }

}
