// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol"; 
import {unopCT} from "contracts/unopCT.sol";

/*
    Forge gas-benchmark tests for unopCT.sol contract. 
*/
contract unopCTTest is Test {
    unopCT public unopct; 

    function setUp() public {
        unopct = new unopCT(); 
    }

    function testGas_RegisterUserUnoptimized() public {
        unopct.registerUser(3, 35, true, address(0x123)); 
    }
    function testDebug() public {
        unopct.debug(); 
    }
}