// License
    // SPDX-License-Identifier: LGPL-3.0-only

// Version Solidity

pragma solidity 0.8.30;

// Contract

contract Structure {

// Numbers

// [0 - 2^256-1]
uint256 number1 = 115792089237316195423570985008687907853269984665640564039457584007913129639935;

uint16 number2 = 256; // [0 - 2^256-1]

uint8 number3 = 127; // [-2^7 - 2^7-1]

uint32 result = number2 * number3;

// String

string word = "Happy 2026";

// Boleans

bool test = true;
bool test1 = false;

// Array

uint256[5] arraytest = [1, 2, 3, 4, 5];


// Mapping

mapping (address => uint) name;(address => uint256) example;

struct Person {

    string name;
    uint256 age;
}

// Modifiers

modifier modifier1 {

    if (5 + 2 != 10) revert();
    _;
}

// Events

event Multiplier(uint256 result);

// Functions

// External
// word (function) + name + arguments + visibility + modifiers + return value
// Visibility:
    // - external
    // - internal 
    // - public
    // - private

function multiplier(uint256 number1_, uint256 number2_) public modifier1 returns (uint256 result_) {
    result_ = number1_ * number2_;

    emit Multiplier(result_);
    return result_;


}
