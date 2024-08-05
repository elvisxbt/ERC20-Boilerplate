// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {NewToken} from "../src/NewToken.sol";

contract DeployNewToken is Script {
    uint256 public constant TOKEN_SUPPLY = 1000000;
    function run() external {
        vm.startBroadcast();
        new NewToken(TOKEN_SUPPLY);
        vm.stopBroadcast();
    }
   
}

