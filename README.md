# Solidity Calculator Contract

## Description

This `Calculator` contract is designed as an educational example to practice good Solidity practices. It combines basic technical skills like:

- State management
- Modifiers
- Events
- Function visibility
- Internal logic separation

The main focus is readability, structure, and solid fundamentals.

# Calculator Contract Documentation

## Variables

- `resultado`: public value of type `uint256` initialized to 10.

## Modifiers

- `checkNumber(uint256 num1_)`: checks that `num1_` is 10, otherwise the transaction reverts.

## Events

- `Addition(uint256 number1, uint256 number2, uint256 resultado)`: emitted when two numbers are added.  
- `Substraction(uint256 number1, uint256 number2, uint256 resultado)`: emitted when two numbers are subtracted

## External Functions

- `addition(uint256 num1_, uint256 num2_)`: adds two numbers and emits an `Addition` event.  
- `substraction(uint256 num1_, uint256 num2_)`: subtracts two numbers using internal logic and emits a `Substraction` event.  
- `substraction2(int256 num1_, int256 num2_)`: subtracts two integer numbers using internal logic, pure function.  
- `multiplier(uint256 num1_)`: multiplies the `resultado` variable by `num1_`.  
- `multiplier2(uint256 num1_)`: multiplies `resultado` by `num1_` only if `num1_` is 10 (checked by `checkNumber`).  

## Internal Functions

- `subtraction_logic(uint256 num1_, uint256 num2_)`: internal logic to subtract `uint256` numbers.  
- `subtraction_logic2(int256 num1_, int256 num2_)`: internal logic to subtract `int256` numbers.  

# Testing

The smart contract has been thoroughly tested based on the defined test cases. The test suite ensures correct behavior across normal scenarios, edge cases, and failure conditions.

## Test Coverage

### Initial State Validation
- Verifies that the `resultado` variable is correctly initialized to **10** upon contract deployment.

### Addition Function
- Normal positive values (e.g., `5 + 5 = 10`)
- Including zero (e.g., `0 + 7 = 7`)
- Upper boundary (`MAX_UINT256 + 0`)
- Overflow scenario (`MAX_UINT256 + 1`, expected to revert)

### Subtraction Function
- Valid subtraction (e.g., `10 - 3 = 7`)
- Subtraction resulting in zero (`5 - 5 = 0`)
- Underflow scenario (`3 - 5`, expected to revert)

### Subtraction2 Function (Signed Integers)
- Operations with negative values (e.g., `-10 - 3 = -13`)
- Lower boundary (`MIN_INT256 - 0`)

### Multiplier Function
- Normal multiplication (e.g., multiplying by 2 updates state to `20`)
- Multiplication by zero (result equals `0`)

### Multiplier2 Function with Modifier
- Allowed value (`10`), passes the modifier and performs multiplication
- Disallowed value (`9`), transaction reverts due to modifier restriction

## Testing Techniques

The test cases are designed using:
- **Equivalence Partitioning (EP)**
- **Boundary Value Analysis (BVA)**

Each test validates:
- Correct numerical results
- Proper event emission
- Expected revert behavior and error handling

This approach ensures robust and reliable coverage of both functional logic and edge conditions.
