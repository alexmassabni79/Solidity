// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

/**
 * @title Structs
 * @dev Set & change structs
 */

 contract marketplace {

    struct Usuario {
        uint id;
        address wallet;
        string name;
    }

    Usuario[] usuarios;

    function addUser (uint _id, string memory _name) external {
        Usuario memory newUser = Usuario(_id, msg.sender, _name);
        usuarios.push(newUser);
    }

    function addUserExplicit (uint _id, string memory _name) external {
        Usuario memory newUserExplicit = Usuario({id: _id, wallet: msg.sender, name: _name});
        usuarios.push(newUserExplicit);
    }

    function addUserImplicit (uint _id, string memory _name) external {
        usuarios.push(Usuario(_id, msg.sender, _name));
    }

    function tamanho() external view returns(uint) {
        return usuarios.length;
    }

    function name(uint _position) external view returns(string memory) {
        require(_position < usuarios.length, "Invalid option");
        return usuarios[_position].name;
    }

 }