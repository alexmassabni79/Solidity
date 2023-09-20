// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

/**
 * @title Person Data
 * @dev Set & change variables
 */

contract PersonData {
    string public name;
    uint8 private age;

    constructor() {
        name = "Alex";
        age = 44;
    }

    function setName(string memory _name) public {
        name = _name;
    }

    function setAge(uint8 _age) public {
        age = _age;
    }

    function getAge() public view returns(uint8) {
        return age;
    }

    function sumValues(uint _value1, uint _value2) internal pure returns(uint) {
        return _value1 + _value2;
    }
}



