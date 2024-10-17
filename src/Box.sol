// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    uint256 private s_number;

    constructor() Ownable(msg.sender) {
        // Any additional setup can go here
    }

    event NumberChanged(uint256 number);

    function store(uint256 newNumber) public onlyOwner {
        s_number = newNumber;
        emit NumberChanged(newNumber);
    }

    function getNumber() external view returns (uint256) {
        return s_number;
    }
}