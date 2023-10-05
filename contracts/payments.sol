// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

/**
 * @title Payments
 * @dev Set & change 
 */

contract Payments {

    function deposit() external payable returns(bool) {
        require(msg.value >= 1 ether, "Valor nao aceito"); 
        return true;
    }

    function balance () external view returns(uint) {
        return address(this).balance;
    }

    function send (uint _amount) external returns (bool){
        if (payable(msg.sender).send(_amount)) {
        return true; }
        else { return false;}
    }

    function transfer (uint _amount, address payable _endereco) external {
        _endereco.transfer(_amount);
    }
}