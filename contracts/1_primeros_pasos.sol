// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract variables_modifiers{
    // valores enteros sin signos (uint)
    uint256 a;
    uint8 public b = 3;

    // valores enteros con signo (int)

    int256 c;
    int8 public d = -32;
    int e = 65;

    // Variable string

    string str;
    string public str_public = "Esto es publico";
    string private str_private = "Esto es privado";

    // Variable booleana
    bool boolean;

    bool public boolean_true = true;
    bool private boolean_false = false;

    //Variables bytes
    bytes32 first_bytes;
    bytes4 second_bytes;
    bytes1 byte_1;

    // Algoritmo de hash

    bytes32 public hashing_keccak256 = keccak256(abi.encodePacked("Hello world", uint(10), msg.sender));
    bytes32 public hashing_sha256 = sha256(abi.encodePacked("Hello World"));
    bytes20 public hashing_ripemd160 = ripemd160(abi.encodePacked("Hello world")); 
    
    
    // variables de tipo adress
    address my_adress;
    address public address1 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address public address2 = msg.sender;

    // variable de enumeracion

    enum options {ON, OFF}
    options state; 
    options constant defaultChoice = options.OFF;

    function turnOn() public {
        state = options.ON;        
    }

    function tunroOff() public {
        state = options.OFF;
    }

    function displayState() public view returns (options) {
        return state;
    }
}