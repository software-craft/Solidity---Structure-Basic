# Smart Contracts & QA Documentation (Basic Level)

## Overview

This repository contains the technical and QA documentation for two Solidity smart contracts:

- `Calculator.sol`
- `Structure.sol`

The project is designed as a **foundational learning and documentation exercise**, focused on understanding Solidity contract structure, execution flow, state management, and manual QA analysis on the EVM.

**Audit / QA Role:** QA Engineer (Blockchain / EVM)  
**Audit Type:** Manual Review + Functional QA Analysis  
**Solidity Version:** `0.8.30`  
**License:** `LGPL-3.0-only`  
**Status:** QA Documentation – Basic Level  
**Date:** 31/01/2026  

---

## Objectives

The primary goal of this repository is **progressive understanding**, not production readiness.

Key validation objectives:

- Correct Solidity contract structure
- Proper use of data types (`uint`, `int`, `bool`, `string`, arrays, mappings)
- Expected functional behavior
- Correct event emission
- State persistence and transaction atomicity
- Understanding of visibility (`public`, `internal`)
- Clear, traceable, and auditable QA documentation

This repository is intended as the **first step in a series of increasingly complex smart contract projects**.

---

## Scope

### Included

- SPDX license declaration
- Fixed Solidity pragma
- State variables
- Basic and advanced data types
- Modifiers
- Events
- Public and internal functions
- State persistence
- Transaction atomicity
- Manual QA test cases and reasoning

### Explicitly Excluded (By Design)

The following topics are **out of scope intentionally**, not by omission:

- Advanced gas optimization
- Access control (roles, ownership)
- Pausability
- Upgradeability (proxy patterns)
- Advanced attack vectors (reentrancy, MEV, frontrunning)
- Automated testing frameworks

---

## Methodology

The analysis and documentation follow a **manual QA-oriented approach**:

- Line-by-line contract review
- Execution flow analysis
- Validation of pre-state and post-state
- Scenario simulation:
  - Valid scenarios
  - Invalid scenarios
  - Edge cases
- Validation against Solidity `>= 0.8.x` best practices
- Focus on functional correctness over optimization

---

## Contracts

### 1. Calculator.sol

#### Architectural Analysis

**License**
- SPDX license defined and valid
- Standards-compliant  
- Risk level: Low

**Solidity Version**
- Fixed version: `pragma solidity 0.8.30`
- Native overflow and underflow protections
- Risk level: Low

---

#### State Variables

**`result`**
- Type: `uint256`
- Stored in contract storage
- Explicitly initialized to `10`
- Automatic public getter


---

#### Modifiers

**`checkNumber(uint256)`**
- Restricts execution to an exact value (`10`)
- Uses `revert` for invalid conditions
- Applies pre-execution control logic


---

#### Events

- Defined and correctly emitted
- Used for execution observability
- Status: Compliant

---

#### Function Analysis

**`addition(uint256, uint256)`**
- Pure deterministic calculation
- Does not modify contract state
- Emits an event

**`subtraction(uint256, uint256)`**
- Uses an internal function
- Protected against underflow by Solidity 0.8.x

**`subtraction2(uint256, uint256)`**
- Demonstrates use of signed integers

**`multiply(uint256)`**
- Modifies persistent state (`result`)
- No range validation applied
- Used to demonstrate state mutation

---

### 2. Structure.sol

The `Structure.sol` contract complements `Calculator.sol` by focusing on:

- Solidity syntax
- Variable initialization behavior
- Data type boundaries
- Arrays and structural layout
- Execution order and storage behavior

(See contract-level comments and QA notes for detailed analysis.)

---

## QA Perspective

This repository emphasizes **thinking like a QA engineer**, not just writing Solidity code.

Key takeaways:

- Understanding how and why contracts fail
- Designing test cases from execution flow
- Observing state transitions
- Distinguishing expected vs unexpected behavior
- Documenting behavior in a traceable way

---

## Intended Audience

- Junior blockchain developers
- QA engineers transitioning into Web3
- Solidity learners seeking structured examples
- Reviewers evaluating foundational smart contract knowledge

---

## License

This project is licensed under the **LGPL-3.0-only** license.  
See the `LICENSE` file for details.
