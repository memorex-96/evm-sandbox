// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {unopCT} from "src/GasOptimization/unopCT.sol";

contract unopCTScript is Script {
    unopCT public unopct;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        unopct = new unopCT();

        vm.stopBroadcast();
    }
}

