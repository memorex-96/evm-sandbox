# Gas Optimization

The idea of Gas Optimization is to compare Solidity patterns (optimized/unoptimized) which will allow us to see how the EVM manages storage and gas

# 2 Smart Contracts
This is a simple contract that stores a list of user registration details
    Includes: ID, age, active status, wallet address

Contract A (unopCT) will use unoptomized Solitidy patterns (using uint256 for everything, un-ordered struct variables, using standard require string errors). 
Contract B (opCT) will make use of packing struct vars tightly (this could be grouping uint32 with bool types to fit in a single 32-byte slot), using custon erros with revert instead of require("string error"), and using uncheck blocks for arithmetic operations that cannot overflow. 

# Testing
This will use a Forge gas-benchmark test, which will compare the deployment and execution of gas costs of both contracts. The results will be documented in this markdown file. 