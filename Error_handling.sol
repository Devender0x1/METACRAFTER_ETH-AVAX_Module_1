// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Division {
    
    function divide(uint256 numerator, uint256 denominator) public pure returns (uint256 result) {
        require(denominator != 0, "Denominator cannot be zero");
    
        result = numerator / denominator;
    }
}
