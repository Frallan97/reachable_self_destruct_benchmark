pragma solidity ^0.4.24;

contract Deed {

    address public registrar;

    bool active;

    modifier onlyRegistrar {
        require(msg.sender == registrar);
        _;
    }

    modifier onlyActive {
        require(active);
        _;
    }

    function Deed(address _owner) public payable {
        registrar = msg.sender;
        active = true;
    }

    function closeDeed(uint refundRatio) public onlyRegistrar onlyActive {
        active = false;
    }

    function destroyDeed() public {
        require(!active);

        selfdestruct(0xdead);
    }
}