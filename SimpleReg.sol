// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.19;

contract SimpleRegistration {
    string[] public names;

    function register(string memory name) public {
        names.push(name);
    }

    function getNames() public view returns (string[] memory) {
        return names;
    }
}
