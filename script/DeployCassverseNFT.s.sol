// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/CassverseNFT.sol";

contract DeployCassverseNFT is Script {
    function run() external {
        vm.startBroadcast();
        new CassverseNFT("ipfs://bafybeiebs6n3bwjf56hm36wnr3zpekpcwqot4lpjdt46qeg23rk5fqo3sm/1.json");
        vm.stopBroadcast();
    }
}