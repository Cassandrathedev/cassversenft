// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/CassverseNFT.sol";

contract MintCassverseNFT is Script {
    function run() external {
        vm.startBroadcast();
        CassverseNFT nft = CassverseNFT(0x86a953Ee5dC7B68A64D682201D22A12E818d302a);
        nft.mint(0x9EFc7ec00233e8746f856a6a5c229Ec27bb98827);
        vm.stopBroadcast();
    }
}