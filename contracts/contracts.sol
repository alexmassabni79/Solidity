// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;


contract Contract_A {

    function retornA() external pure returns(string memory) {
        return "A";
    }
}

contract Contract_B {

    function retornB() external pure returns(string memory) {
        return "B";
    }
}

contract Contract_C {
    function retorn_Other_Contract(address _contrato) pure external returns(string memory) {
        return Contract_A(_contrato).retornA;
    }
}
