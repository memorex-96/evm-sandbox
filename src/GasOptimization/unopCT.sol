// SPD-License-Identifier: MIT 
pragma solidity ^0.8.13; 
 // TODO: store a list of user registration details (ID, age, active status, wallet address) 
 // GOAL: Unoptimized solidity patterns to show how gas is affected by different data structures and storage patterns.
contract unopCT {

    struct User {
        uint256 id; 
        uint256 age; 
        bool isActive; 
        address walletAddress; 
    }

    User[] public users; 

    function registerUser(
        uint256 id,
        uint256 age, 
        bool isActive, 
        address walletAddress 
    ) public {
        require(id > 0, "ID must be greater than 0");
        require(age > 0, "Age must be greater than 0");
        require(walletAddress != address(0), "Wallet address cannot be zero address"); 
        users.push(User({
            id: id, 
            age: age, 
            isActive: isActive,
            walletAddress: walletAddress
        }));
    }
    

    constructor() {
        // init with dummy test data 
        registerUser(1, 25, true, 0x000000000000000000000000000000000000dEaD);  
        registerUser(2, 30, false, 0x000000000000000000000000000000000000dEaD);  
    }

}
