pragma solidity ^0.5.15;

contract StreamManager {
    VestingPool internal constant pool = VestingPool(0xDCf613db29E4d0B35e7e15e93BF6cc6315eB0b82);

    function execute() external {
        pool.openStream(0xC45d45b54045074Ed12d1Fe127f714f8aCE46f8c);

        selfdestruct(address(0x0));
    }
}

contract VestingPool {
    address public gov;

    constructor(address addr) public{
        gov = addr;
    }

    function openStream(address recipient) public returns (uint256 streamIndex){
        return 5;
    }
}