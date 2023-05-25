pragma solidity =0.8.10;

contract AdminVault  {

    function destroy() public {
        selfdestruct( payable(msg.sender));
    }
}

contract AdminAuth {
    // The address supplied is where the AdminVault is deployed
    AdminVault public constant adminVault = AdminVault(0xCCf3d848e08b94478Ed8f46fFead3008faF581fD); 

    /// @notice Destroy the contract
    function kill() public {
        adminVault.destroy();
    }
}