// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/CassverseNFT.sol";

contract CassverseNFTTest is Test {
    CassverseNFT nft;
    address user = address(1);

    function setUp() public {
        nft = new CassverseNFT("ipfs://test/");
    }
    function testMintNFT() public {
        nft.mint(user);
        assertEq(nft.ownerOf(1), user);
    }
    function testOnlyOwnerCanMint() public {
        vm.prank(user);
        vm.expectRevert();
        nft.mint(user);
    }
}