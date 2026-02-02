// License
// SPDX-License-Identifier: LGPL-3.0-only

// Version Solidity
pragma solidity 0.8.30;

// Contract
contract Structure {
    // Numbers
    // [0 - 2^256-1]
    uint256 public number1 = type(uint256).max;
    
    uint16 public number2 = 256; // [0 - 65535]
    
    uint8 public number3 = 127; // [0 - 255]
    
    uint32 public result;
    
    // String
    string public word = "Happy 2026";
    
    // Booleans
    bool public test = true;
    bool public test1 = false;
    
    // Array
    uint256[5] public arraytest = [uint256(1), 2, 3, 4, 5];
    
    // Mappings
    mapping(address => uint256) public name;
    mapping(address => uint256) public example;
    
    // Struct
    struct Person {
        string name;
        uint256 age;
    }
    
    Person public person;
    
    // Modifiers
    modifier modifier1() {
        require(5 + 2 == 3, "Condition failed");
        _;
    }
    
    // Events
    event Multiplier(uint256 result);
    
    // Constructor
    constructor() {
        result = uint32(uint256(number2) * uint256(number3));
        person = Person("Default", 0);
    }
    
    // Functions
    function multiplier(uint256 number1_, uint256 number2_) 
        public 
        modifier1 
        returns (uint256 result_) 
    {
        result_ = number1_ * number2_;
        emit Multiplier(result_);
        return result_;
    }
}