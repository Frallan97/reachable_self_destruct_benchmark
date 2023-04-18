
pragma solidity ^0.6.0;

contract Internal_Suicide
{
    function _destruct() internal{
        selfdestruct(msg.sender);
    }

    function call_destruct() external{
        _destruct();
    }    
}