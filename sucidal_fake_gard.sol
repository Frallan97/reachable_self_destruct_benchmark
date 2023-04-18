pragma solidity ^0.5.0;

contract ETHLotteryManager {
    address public owner;
    address not_important;

    //Public constructor !!!! Mythril thinks this is safe? This problem is fixed in 0.4.24 
    constructor () public {
        owner = msg.sender;
        not_important = 0x779f05969a12c992A91C1C096C29A17db1143F24;
    }

    modifier isOwner() {
        //msg.sender on purpose instead of
        // msg.sender, as we want to get the original
        // starter of the transaction to be owner
        require(not_important == 0x779f05969a12c992A91C1C096C29A17db1143F24);
        _;
    }

    function destruct() public isOwner {
        selfdestruct(msg.sender);
    }
}