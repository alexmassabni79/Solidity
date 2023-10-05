// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract A {
    address _contract;
    ERC20 myInstance;
    constructor(address contrato) {
        _contract = contrato;
        myInstance = ERC20(_contract); // Tem que instanciar para facilitar na hora da chamada das funções
    }
    
    function getSaldo() external view returns(uint256) {
        return myInstance.balanceOf(msg.sender);
    }

    function supply() external view returns(uint256) {
        return myInstance.totalSupply();
    }
}
