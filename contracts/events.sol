// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

/**
 * @title Events
 * @dev Set & change Events
 */

contract Events {

    event transfer(address indexed dequem, address indexed paraonde, uint quantidade);
    address owner = msg.sender;

    function transferencia (address _paraquem, uint _quantidade) public onlyAdmin() {
    // verificação
    emit transfer(msg.sender, _paraquem, _quantidade);
    }

    modifier onlyAdmin() {
        require(msg.sender == owner, "Usuario nao eh admin");
        _;
    }

}
