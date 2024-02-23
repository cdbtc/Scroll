// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.19;

contract RandomNumberGenerator {
    uint256 private nonce = 0;

    function random() public returns (uint256) {
        uint256 randomnumber = uint256(keccak256(abi.encodePacked(block.timestamp, msg.sender, nonce))) % 100;
        randomnumber = randomnumber + 1;
        nonce++;
        return randomnumber;
    }
}
