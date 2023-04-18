pragma solidity ^0.4.0;

contract LoopSuicide {

    function suicideFunc(){
        selfdestruct(msg.sender);
    }

    function sudicideAnyone() {
        for (uint256 i=0; i<5; i++) {
            
            suicideFunc();
        }
    }

}

