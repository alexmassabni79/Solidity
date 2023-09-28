// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

/**
 * @title Built In
 * @dev Set & change variables
 */

contract BuiltIn {
    uint public id;
    address public addressMiner;
    uint public difficult;
    uint public limit;
    uint public blockNumber;
    uint public timestamp;

    address public owner;
    uint public value;
    address public sent;

    constructor() payable {
    id = block.chainid;
    addressMiner = block.coinbase;
    difficult = block.prevrandao;
    limit = block.gaslimit;
    blockNumber = block.number;
    timestamp = block.timestamp; 

    owner = msg.sender; //Se tiver mais de um contrato interagindo, esse valor será alterado. Pode ser um contrato ou uma carteira.
    value = msg.value;
    sent = tx.origin; //Sempre mantém a origem da transação. Será sempre a carteira (walet).

}
}