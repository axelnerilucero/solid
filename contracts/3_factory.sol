// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract padre {
    // Almacenamiento de informacions del factory
    mapping(address => address) public personal_contract;

    // EMision de los nuevos smart contracts
    function Factory() public {
        address addr_personal_contract = address(new hijo(msg.sender, address(this)));
        personal_contract[msg.sender] = addr_personal_contract;
    }
}

contract hijo {
    // Estructura de datos del propietaio
    Owner public propietario;
    struct Owner {
        address _owner;
        address _smartcontractOwner;
    }
    // Datos recibidos al nuevo smart contract
    constructor (address _account, address _accountSC) {
        propietario._owner = _account;
        propietario._smartcontractOwner = _accountSC;   
    }
}