// License
// SPDX-License-Identifier: LGPL-3.0-only

// Version solidity
pragma solidity 0.8.30;

// Contract

contract Calculator {

    // Variables
    uint256 public result = 10; // [ 0 - 2^256 - 1 ]

    // Modifiers
    modifier checkNumber(uint256 num1_) {
        if (num1_ != 10) revert();
        _;
    }

    // Events
    event Addition(uint256 number1, uint256 number2, uint256 result);
    event Subtraction(uint256 number1, uint256 number2, uint256 result);

    // External functions
    function addition(uint256 num1_, uint256 num2_) public returns(uint256 result_) {
        result_ = num1_ + num2_;

        emit Addition(num1_, num2_, result_);
    }

    function subtraction(uint256 num1_, uint256 num2_) public returns(uint256 result_) {
        result_ = subtraction_logic(num1_, num2_);

        emit Subtraction(num1_, num2_, result_);
    }

    function subtraction2(int256 num1_, int256 num2_) public pure returns(int256 result_) {
        result_ = subtraction_logic2(num1_, num2_);
    }

    function multiply(uint256 num1_) public {
        result = result * num1_;
    }

    function multiply2(uint256 num1_) public checkNumber(num1_) {
        result = result * num1_;
    }

    // Internal functions
    function subtraction_logic(uint256 num1_, uint256 num2_) internal pure returns(uint256 result_) {
        result_ = num1_ - num2_;
    }

    function subtraction_logic2(int256 num1_, int256 num2_) internal pure returns(int256 result_) {
        result_ = num1_ - num2_;
    }
}