// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts@4.5.0/token/ERC1155/ERC1155.sol";


// Persona 1:  (owner) 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
// Persona 2 (Receptor): 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB
// Persona 3 (Operador): 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
contract erc1155 is ERC1155 {
    // Variables
    uint256 public constant GOLD = 0;
    uint256 public constant SILVER = 1;
    uint256 public constant THORS_HAMMER = 2;
    uint256 public constant SWORD = 3;
    uint256 public constant SHIELD = 4;

    // Constructor del smart Contract
    constructor () ERC1155("https://game.example/api/item/{id}.json") {
        _mint(msg.sender, GOLD, 10**18, "");
        _mint(msg.sender, SILVER, 10**27, "");
        _mint(msg.sender, THORS_HAMMER, 1, "");
        _mint(msg.sender, SWORD, 10**9, "");
        _mint(msg.sender, SHIELD, 10**8, "");
    }


}


