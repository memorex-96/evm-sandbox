// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import { ScaffoldETHDeploy } from "./DeployHelpers.s.sol";
import {unopCT} from "contracts/unopCT.sol";

contract unopCTScript is ScaffoldETHDeploy { 
    unopCT public unopct;

    function setUp() public {}

    function run() external ScaffoldEthDeployerRunner {
        new unopCT();
    }
}

