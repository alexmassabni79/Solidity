// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReceiveA {
//    receive() external payable{}
//    fallback() external payable{}
//    uint public a;
    bool public fallbackCalled = false;

    fallback() external payable{
        fallbackCalled = true;
    }
}

//    function setVar(uint _var) external {
//        a = _var;    }

contract ReceiveB {
    function testCall(address _contract, uint _var) external payable{
//        (bool success, ) = _contract.call(abi.encodeWithSignature("setVar(uint256)",_var));
        (bool success, ) = _contract.call(""); 
        require(success, "*** Call Failed ***");
    }
}
